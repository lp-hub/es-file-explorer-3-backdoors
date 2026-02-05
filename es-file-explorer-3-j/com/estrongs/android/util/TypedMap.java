package com.estrongs.android.util;

import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Set;

/* loaded from: classes.dex */
public class TypedMap extends HashMap<String, Object> {
    public static final TypedMap EMPTY = new EmptyTypedMap();
    public static final String KEY_FROM = "from";
    public static final String KEY_TO = "to";
    private static final long serialVersionUID = 1;

    /* loaded from: classes.dex */
    public final class EmptyTypedMap extends TypedMap {
        private static final long serialVersionUID = 1;

        private Object readResolve() {
            return Collections.EMPTY_MAP;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return false;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public boolean containsValue(Object obj) {
            return false;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public Set entrySet() {
            return Collections.EMPTY_SET;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public Object get(Object obj) {
            return null;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public Set keySet() {
            return Collections.EMPTY_SET;
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        public Collection values() {
            return Collections.EMPTY_LIST;
        }
    }

    public TypedMap() {
    }

    public TypedMap(TypedMap typedMap) {
        if (typedMap != null) {
            for (String str : typedMap.keySet()) {
                put(str, typedMap.get(str));
            }
        }
    }

    public boolean getBoolean(String str) {
        return aw.b(get(str));
    }

    public boolean getBoolean(String str, boolean z) {
        Object obj = get(str);
        return obj == null ? z : aw.a((Object) obj.toString(), z);
    }

    public Date getDate(String str) {
        Object obj = get(str);
        if (obj != null) {
            return (Date) obj;
        }
        return null;
    }

    public int getInt(String str) {
        return (int) getLong(str);
    }

    public int getInt(String str, long j) {
        return (int) getLong(str, j);
    }

    public long getLong(String str) {
        return getLong(str, 0L);
    }

    public long getLong(String str, long j) {
        Object obj = get(str);
        return obj == null ? j : aw.a(obj.toString(), j);
    }

    public String getString(String str) {
        Object obj = get(str);
        if (obj != null) {
            return obj.toString();
        }
        return null;
    }

    public String getString(String str, String str2) {
        Object obj = get(str);
        return obj != null ? obj.toString() : str2;
    }
}

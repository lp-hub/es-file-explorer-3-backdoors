package com.dropbox.client2.jsonextract;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class JsonMap extends JsonBase<Map<String, Object>> implements Iterable<Map.Entry<String, JsonThing>> {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class WrappedEntry implements Map.Entry<String, JsonThing> {
        private final String key;
        private final JsonThing value;

        private WrappedEntry(String str, Map.Entry<String, Object> entry) {
            this.key = entry.getKey();
            this.value = new JsonThing(entry.getValue(), JsonMap.pathConcatField(str, this.key));
        }

        @Override // java.util.Map.Entry
        public String getKey() {
            return this.key;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Map.Entry
        public JsonThing getValue() {
            return this.value;
        }

        @Override // java.util.Map.Entry
        public JsonThing setValue(JsonThing jsonThing) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes.dex */
    final class WrapperIterator implements Iterator<Map.Entry<String, JsonThing>> {
        private final Iterator<Map.Entry<String, Object>> internal;
        private final String path;

        private WrapperIterator(String str, Iterator<Map.Entry<String, Object>> it) {
            this.path = str;
            this.internal = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.internal.hasNext();
        }

        @Override // java.util.Iterator
        public Map.Entry<String, JsonThing> next() {
            return new WrappedEntry(this.path, this.internal.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("can't remove");
        }
    }

    public JsonMap(Map<String, Object> map) {
        super(map);
    }

    public JsonMap(Map<String, Object> map, String str) {
        super(map, str);
    }

    private static boolean isEnglishDigit(char c) {
        return c >= '0' && c <= '9';
    }

    private static boolean isEnglishLetter(char c) {
        return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z');
    }

    private static boolean isIdentLike(String str) {
        if (str.length() != 0 && isEnglishLetter(str.charAt(0))) {
            for (int i = 1; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (!isEnglishLetter(charAt) && !isEnglishDigit(charAt)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String pathConcatField(String str, String str2) {
        if (!isIdentLike(str2)) {
            str2 = '\"' + str2 + '\"';
        }
        return JsonThing.pathConcat(str, str2);
    }

    @Override // com.dropbox.client2.jsonextract.JsonBase
    public /* bridge */ /* synthetic */ JsonExtractionException error(String str) {
        return super.error(str);
    }

    public JsonThing get(String str) {
        if (((Map) this.internal).containsKey(str)) {
            return new JsonThing(((Map) this.internal).get(str), pathConcatField(this.path, str));
        }
        throw error("expecting object to have field \"" + str + "\", but it does not");
    }

    public JsonThing getMaybe(String str) {
        if (((Map) this.internal).containsKey(str)) {
            return new JsonThing(((Map) this.internal).get(str), pathConcatField(this.path, str));
        }
        return null;
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<String, JsonThing>> iterator() {
        return new WrapperIterator(this.path, ((Map) this.internal).entrySet().iterator());
    }
}

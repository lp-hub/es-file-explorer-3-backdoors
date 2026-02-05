package com.dropbox.client2.jsonextract;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class JsonList extends JsonBase<List<Object>> implements Iterable<JsonThing> {

    /* loaded from: classes.dex */
    public final class Extractor<T> extends JsonExtractor<List<T>> {
        public final JsonExtractor<T> elementExtractor;

        public Extractor(JsonExtractor<T> jsonExtractor) {
            this.elementExtractor = jsonExtractor;
        }

        @Override // com.dropbox.client2.jsonextract.JsonExtractor
        public List<T> extract(JsonThing jsonThing) {
            return jsonThing.expectList().extract(this.elementExtractor);
        }
    }

    /* loaded from: classes.dex */
    final class WrapperIterator implements Iterator<JsonThing> {
        private final Iterator<Object> internal;
        private int numReturned;
        private final String path;

        private WrapperIterator(String str, Iterator<Object> it) {
            this.numReturned = 0;
            this.path = str;
            this.internal = it;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.internal.hasNext();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public JsonThing next() {
            int i = this.numReturned;
            this.numReturned = i + 1;
            return new JsonThing(this.internal.next(), JsonList.pathConcatIndex(this.path, i));
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("can't remove");
        }
    }

    public JsonList(List<Object> list) {
        super(list);
    }

    public JsonList(List<Object> list, String str) {
        super(list, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String pathConcatIndex(String str, int i) {
        return JsonThing.pathConcat(str, Integer.toString(i));
    }

    @Override // com.dropbox.client2.jsonextract.JsonBase
    public /* bridge */ /* synthetic */ JsonExtractionException error(String str) {
        return super.error(str);
    }

    public void expectLength(int i) {
        if (((List) this.internal).size() != i) {
            throw error("expecting array to have length " + i + ", but it has length " + ((List) this.internal).size());
        }
    }

    public <T> ArrayList<T> extract(JsonExtractor<T> jsonExtractor) {
        ArrayList<T> arrayList = new ArrayList<>(length());
        Iterator it = ((List) this.internal).iterator();
        while (it.hasNext()) {
            arrayList.add(jsonExtractor.extract(new JsonThing(it.next())));
        }
        return arrayList;
    }

    public JsonThing get(int i) {
        if (i >= ((List) this.internal).size()) {
            throw error("expecting array to have an element at index " + i + ", but it only has length " + ((List) this.internal).size());
        }
        return new JsonThing(((List) this.internal).get(i), pathConcatIndex(this.path, i));
    }

    @Override // java.lang.Iterable
    public Iterator<JsonThing> iterator() {
        return new WrapperIterator(this.path, ((List) this.internal).iterator());
    }

    public int length() {
        return ((List) this.internal).size();
    }
}

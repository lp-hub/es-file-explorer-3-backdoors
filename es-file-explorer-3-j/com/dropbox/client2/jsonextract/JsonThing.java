package com.dropbox.client2.jsonextract;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class JsonThing extends JsonBase<Object> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final HashMap<Class, String> TypeNames;

    /* loaded from: classes.dex */
    public final class OptionalExtractor<T> extends JsonExtractor<T> {
        public final JsonExtractor<T> elementExtractor;

        public OptionalExtractor(JsonExtractor<T> jsonExtractor) {
            this.elementExtractor = jsonExtractor;
        }

        @Override // com.dropbox.client2.jsonextract.JsonExtractor
        public T extract(JsonThing jsonThing) {
            return (T) jsonThing.optionalExtract(this.elementExtractor);
        }
    }

    static {
        $assertionsDisabled = !JsonThing.class.desiredAssertionStatus();
        TypeNames = new HashMap<>();
        TypeNames.put(String.class, "a string");
        TypeNames.put(Number.class, "a number");
        TypeNames.put(Boolean.class, "a boolean");
        TypeNames.put(Map.class, "an object");
        TypeNames.put(List.class, "an array");
    }

    public JsonThing(Object obj) {
        super(obj, null);
    }

    public JsonThing(Object obj, String str) {
        super(obj, str);
    }

    private <T> T expect(Class<T> cls) {
        if (!$assertionsDisabled && cls == null) {
            throw new AssertionError();
        }
        if (cls.isInstance(this.internal)) {
            return this.internal;
        }
        throw error("expecting " + typeNameForClass(cls) + ", found " + typeNameForObject(this.internal));
    }

    private boolean is(Class<?> cls) {
        if ($assertionsDisabled || cls != null) {
            return cls.isInstance(this.internal);
        }
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String pathConcat(String str, String str2) {
        return str == null ? str2 : str + "/" + str2;
    }

    private static String typeNameForClass(Class<?> cls) {
        if (cls == null) {
            return "null";
        }
        String str = TypeNames.get(cls);
        if ($assertionsDisabled || str != null) {
            return str;
        }
        throw new AssertionError();
    }

    private static String typeNameForObject(Object obj) {
        if (obj == null) {
            return "null";
        }
        if (obj instanceof Number) {
            return "a number";
        }
        if (obj instanceof String) {
            return "a string";
        }
        if (obj instanceof Boolean) {
            return "a boolean";
        }
        if (obj instanceof Map) {
            return "an object";
        }
        if (obj instanceof List) {
            return "an array";
        }
        throw new IllegalArgumentException("not a valid org.json.simple type: " + obj.getClass().getName());
    }

    @Override // com.dropbox.client2.jsonextract.JsonBase
    public /* bridge */ /* synthetic */ JsonExtractionException error(String str) {
        return super.error(str);
    }

    public boolean expectBoolean() {
        return ((Boolean) expect(Boolean.class)).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public long expectInt64() {
        if (this.internal instanceof Number) {
            return ((Number) this.internal).longValue();
        }
        if (!(this.internal instanceof String)) {
            throw error("expecting an integer (or a hex string), found " + typeNameForObject(this.internal));
        }
        try {
            return Long.parseLong((String) this.internal, 16);
        } catch (NumberFormatException e) {
            throw error("couldn't parse string as hex (expecting a 64-bit signed integer value)");
        }
    }

    public JsonList expectList() {
        return new JsonList((List) expect(List.class), this.path);
    }

    public JsonMap expectMap() {
        return new JsonMap((Map) expect(Map.class), this.path);
    }

    public void expectNull() {
        if (this.internal != 0) {
            throw error("expecting null");
        }
    }

    public Number expectNumber() {
        return (Number) expect(Number.class);
    }

    public String expectString() {
        return (String) expect(String.class);
    }

    public String expectStringOrNull() {
        if (this.internal == 0) {
            return null;
        }
        return (String) expect(String.class);
    }

    public boolean isBoolean() {
        return is(Boolean.class);
    }

    public boolean isInt64() {
        try {
            expectInt64();
            return true;
        } catch (JsonExtractionException e) {
            return false;
        }
    }

    public boolean isList() {
        return is(List.class);
    }

    public boolean isMap() {
        return is(Map.class);
    }

    public boolean isNull() {
        return this.internal == 0;
    }

    public boolean isNumber() {
        return is(Number.class);
    }

    public boolean isString() {
        return is(String.class);
    }

    public <T> T optionalExtract(JsonExtractor<T> jsonExtractor) {
        if (isNull()) {
            return null;
        }
        return jsonExtractor.extract(this);
    }

    public JsonExtractionException unexpected() {
        return error("unexpected type: " + typeNameForObject(this.internal));
    }
}

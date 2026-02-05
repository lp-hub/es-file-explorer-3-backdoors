package com.dropbox.client2.jsonextract;

import java.util.List;
import java.util.Map;
import org.json.simple.JSONValue;

/* loaded from: classes.dex */
public final class JsonExtractionException extends Exception {
    public JsonExtractionException(String str, String str2, Object obj) {
        super((str == null ? "" : str + ": ") + str2 + (obj == null ? "" : ": " + summarizeValue(obj)));
    }

    private static String summarizeValue(Object obj) {
        if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                return JSONValue.toJSONString(obj);
            }
            List list = (List) obj;
            return list.isEmpty() ? "[]" : list.size() == 1 ? "[" + summarizeValue(list.get(0)) + "]" : "[" + summarizeValue(list.get(0)) + ", ...] (" + list.size() + " elements)";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        String str = "";
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            sb.append(str);
            str = ", ";
            sb.append(JSONValue.toJSONString(entry.getKey()));
            sb.append(" = ");
            sb.append("...");
        }
        sb.append("}");
        return sb.toString();
    }
}

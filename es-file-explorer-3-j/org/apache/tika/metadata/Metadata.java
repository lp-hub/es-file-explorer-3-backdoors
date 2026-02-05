package org.apache.tika.metadata;

import java.util.HashMap;
import java.util.Map;
import org.apache.http.entity.mime.MIME;

/* loaded from: classes.dex */
public class Metadata {
    public static String CONTENT_TYPE = MIME.CONTENT_TYPE;
    private Map<String, String[]> metadata;

    public Metadata() {
        this.metadata = null;
        this.metadata = new HashMap();
    }

    private String[] _getValues(String str) {
        String[] strArr = this.metadata.get(str);
        return strArr == null ? new String[0] : strArr;
    }

    private String[] appendedValues(String[] strArr, String str) {
        String[] strArr2 = new String[strArr.length + 1];
        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
        strArr2[strArr2.length - 1] = str;
        return strArr2;
    }

    public void add(String str, String str2) {
        String[] strArr = this.metadata.get(str);
        if (strArr == null) {
            set(str, str2);
        } else {
            this.metadata.put(str, appendedValues(strArr, str2));
        }
    }

    public String get(String str) {
        String[] strArr = this.metadata.get(str);
        if (strArr == null) {
            return null;
        }
        return strArr[0];
    }

    public String[] getValues(String str) {
        return _getValues(str);
    }

    public String[] names() {
        return (String[]) this.metadata.keySet().toArray(new String[this.metadata.keySet().size()]);
    }

    public void set(String str, String str2) {
        if (str2 != null) {
            this.metadata.put(str, new String[]{str2});
        } else {
            this.metadata.remove(str);
        }
    }
}

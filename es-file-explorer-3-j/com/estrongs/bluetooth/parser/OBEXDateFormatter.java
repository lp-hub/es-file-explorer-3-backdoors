package com.estrongs.bluetooth.parser;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class OBEXDateFormatter extends SimpleDateFormat {
    private static final long serialVersionUID = 3078108458939975850L;
    private DateFormat isoFormatter = new SimpleDateFormat("yyyyMMdd'T'HHmmss");
    private DateFormat utcFormatter = new SimpleDateFormat("yyyyMMdd'T'HHmmssZ");

    public OBEXDateFormatter() {
        this.utcFormatter.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    @Override // java.text.DateFormat
    public Date parse(String str) {
        DateFormat dateFormat;
        if (str == null || "".equals(str.trim())) {
            return null;
        }
        if (str.endsWith("Z")) {
            str = str.replaceAll("Z", "UTC");
            dateFormat = this.utcFormatter;
        } else {
            dateFormat = this.isoFormatter;
        }
        return (Date) dateFormat.parseObject(str);
    }
}

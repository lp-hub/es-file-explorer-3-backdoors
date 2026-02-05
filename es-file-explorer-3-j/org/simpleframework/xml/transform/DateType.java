package org.simpleframework.xml.transform;

import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
enum DateType {
    FULL("yyyy-MM-dd HH:mm:ss.S z"),
    LONG("yyyy-MM-dd HH:mm:ss z"),
    NORMAL("yyyy-MM-dd z"),
    SHORT("yyyy-MM-dd");

    private DateFormat format;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class DateFormat {
        private SimpleDateFormat format;

        public DateFormat(String str) {
            this.format = new SimpleDateFormat(str);
        }

        public synchronized Date getDate(String str) {
            return this.format.parse(str);
        }

        public synchronized String getText(Date date) {
            return this.format.format(date);
        }
    }

    DateType(String str) {
        this.format = new DateFormat(str);
    }

    public static Date getDate(String str) {
        return getType(str).getFormat().getDate(str);
    }

    private DateFormat getFormat() {
        return this.format;
    }

    public static String getText(Date date) {
        return FULL.getFormat().getText(date);
    }

    public static DateType getType(String str) {
        int length = str.length();
        return length > 23 ? FULL : length > 20 ? LONG : length > 11 ? NORMAL : SHORT;
    }

    /* renamed from: values, reason: to resolve conflict with enum method */
    public static DateType[] valuesCustom() {
        DateType[] valuesCustom = values();
        int length = valuesCustom.length;
        DateType[] dateTypeArr = new DateType[length];
        System.arraycopy(valuesCustom, 0, dateTypeArr, 0, length);
        return dateTypeArr;
    }
}

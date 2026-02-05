package de.aflx.sardine.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/* loaded from: classes.dex */
public class SardineUtil {
    public static final String CUSTOM_NAMESPACE_PREFIX = "s";
    public static final String CUSTOM_NAMESPACE_URI = "SAR:";
    private static final List<ThreadLocal<SimpleDateFormat>> DATETIME_FORMATS = Arrays.asList(new ThreadLocal<SimpleDateFormat>() { // from class: de.aflx.sardine.util.SardineUtil.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public SimpleDateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            return simpleDateFormat;
        }
    }, new ThreadLocal<SimpleDateFormat>() { // from class: de.aflx.sardine.util.SardineUtil.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public SimpleDateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            return simpleDateFormat;
        }
    }, new ThreadLocal<SimpleDateFormat>() { // from class: de.aflx.sardine.util.SardineUtil.3
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public SimpleDateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.sss'Z'", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            return simpleDateFormat;
        }
    }, new ThreadLocal<SimpleDateFormat>() { // from class: de.aflx.sardine.util.SardineUtil.4
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public SimpleDateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            return simpleDateFormat;
        }
    }, new ThreadLocal<SimpleDateFormat>() { // from class: de.aflx.sardine.util.SardineUtil.5
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public SimpleDateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            return simpleDateFormat;
        }
    }, new ThreadLocal<SimpleDateFormat>() { // from class: de.aflx.sardine.util.SardineUtil.6
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public SimpleDateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEEEEE, dd-MMM-yy HH:mm:ss zzz", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            return simpleDateFormat;
        }
    }, new ThreadLocal<SimpleDateFormat>() { // from class: de.aflx.sardine.util.SardineUtil.7
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public SimpleDateFormat initialValue() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE MMMM d HH:mm:ss yyyy", Locale.US);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
            return simpleDateFormat;
        }
    });
    public static final String DEFAULT_NAMESPACE_PREFIX = "d";
    public static final String DEFAULT_NAMESPACE_URI = "DAV:";

    private static Document createDocument() {
        try {
            return DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument();
        } catch (ParserConfigurationException e) {
            throw new RuntimeException(e.getMessage(), e);
        }
    }

    public static Element createElement(QName qName) {
        return createDocument().createElementNS(qName.getNamespaceURI(), String.valueOf(qName.getPrefix()) + ":" + qName.getLocalPart());
    }

    public static QName createQNameWithCustomNamespace(String str) {
        return new QName(CUSTOM_NAMESPACE_URI, str, CUSTOM_NAMESPACE_PREFIX);
    }

    public static QName createQNameWithDefaultNamespace(String str) {
        return new QName(DEFAULT_NAMESPACE_URI, str, DEFAULT_NAMESPACE_PREFIX);
    }

    public static Date parseDate(String str) {
        Date date;
        if (str == null) {
            return null;
        }
        Iterator<ThreadLocal<SimpleDateFormat>> it = DATETIME_FORMATS.iterator();
        while (true) {
            if (!it.hasNext()) {
                date = null;
                break;
            }
            try {
                date = it.next().get().parse(str);
                break;
            } catch (ParseException e) {
            }
        }
        return date;
    }

    public static List<QName> toQName(List<String> list) {
        if (list == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(createQNameWithCustomNamespace(it.next()));
        }
        return arrayList;
    }

    public static Map<QName, String> toQName(Map<String, String> map) {
        if (map == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            hashMap.put(createQNameWithCustomNamespace(entry.getKey()), entry.getValue());
        }
        return hashMap;
    }
}

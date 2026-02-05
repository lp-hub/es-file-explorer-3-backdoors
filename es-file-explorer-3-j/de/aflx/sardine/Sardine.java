package de.aflx.sardine;

import de.aflx.sardine.impl.io.ConsumingInputStream;
import de.aflx.sardine.util.QName;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpEntity;

/* loaded from: classes.dex */
public interface Sardine {
    void abort();

    void copy(String str, String str2);

    void createDirectory(String str);

    void delete(String str);

    void destroy();

    void disableCompression();

    void disablePreemptiveAuthentication();

    void enableCompression();

    void enablePreemptiveAuthentication(String str);

    boolean exists(String str);

    ConsumingInputStream get(String str);

    ConsumingInputStream get(String str, Map<String, String> map);

    @Deprecated
    List<DavResource> getResources(String str);

    boolean isAborted();

    List<DavResource> list(String str);

    List<DavResource> list(String str, int i);

    String lock(String str);

    void move(String str, String str2);

    List<DavResource> patch(String str, Map<QName, String> map);

    List<DavResource> patch(String str, Map<QName, String> map, List<QName> list);

    void put(String str, InputStream inputStream);

    void put(String str, InputStream inputStream, String str2);

    void put(String str, InputStream inputStream, String str2, boolean z);

    void put(String str, InputStream inputStream, Map<String, String> map);

    void put(String str, HttpEntity httpEntity, String str2, boolean z);

    void put(String str, byte[] bArr);

    void put(String str, byte[] bArr, String str2);

    void setCredentials(String str, String str2);

    void setCredentials(String str, String str2, String str3, String str4);

    @Deprecated
    void setCustomProps(String str, Map<String, String> map, List<String> list);

    void unlock(String str, String str2);
}

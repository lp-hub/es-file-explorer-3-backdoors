package com.estrongs.fs.impl.g;

import android.util.Log;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ab;
import com.estrongs.android.util.ak;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.g;
import com.estrongs.fs.k;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* loaded from: classes.dex */
public class b extends k {
    private static HttpParams c = new BasicHttpParams();

    /* renamed from: a, reason: collision with root package name */
    public final int f3080a = 0;

    /* renamed from: b, reason: collision with root package name */
    public final int f3081b = 1;

    static {
        HttpConnectionParams.setConnectionTimeout(c, 20000);
        HttpConnectionParams.setSoTimeout(c, 60000);
    }

    private String d(String str) {
        return !str.contains("%") ? ak.bm(str) : str;
    }

    @Override // com.estrongs.fs.k, com.estrongs.fs.j
    public g a(String str) {
        return a(str, (TypedMap) null);
    }

    public g a(String str, TypedMap typedMap) {
        try {
            HttpGet httpGet = new HttpGet(d(str));
            httpGet.addHeader("User-Agent", "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1)");
            HttpClient a2 = ab.a(c);
            HttpResponse execute = typedMap == null ? a2.execute(httpGet) : a2 instanceof AbstractHttpClient ? new com.estrongs.android.c.b((AbstractHttpClient) a2, typedMap.getString("NEW_USERNAME"), typedMap.getString("NEW_PASSWORD")).a(httpGet) : null;
            int statusCode = execute.getStatusLine().getStatusCode();
            if (statusCode == 404) {
                throw new FileSystemException("File is not found");
            }
            if (statusCode == 403) {
                throw new FileSystemException("File is forbidden");
            }
            if (statusCode == 401) {
                throw new FileSystemException("File is unauthorized");
            }
            return new a(str, execute);
        } catch (FileSystemException e) {
            throw e;
        } catch (Exception e2) {
            throw new FileSystemException(e2.getMessage(), e2);
        }
    }

    public InputStream a(String str, long j) {
        return a(str, j, (TypedMap) null);
    }

    public InputStream a(String str, long j, TypedMap typedMap) {
        HttpGet httpGet = new HttpGet(d(str));
        httpGet.addHeader("User-Agent", "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1)");
        if (j > 0) {
            try {
                httpGet.addHeader("Range", "bytes=" + j + "-");
            } catch (Exception e) {
                httpGet.abort();
                throw new FileSystemException(e.getMessage(), e);
            }
        }
        HttpClient a2 = ab.a(c);
        HttpResponse execute = (typedMap == null || !(a2 instanceof AbstractHttpClient)) ? a2.execute(httpGet) : new com.estrongs.android.c.b((AbstractHttpClient) a2, typedMap.getString("NEW_USERNAME"), typedMap.getString("NEW_PASSWORD")).a(httpGet);
        HttpEntity entity = execute.getEntity();
        int statusCode = execute.getStatusLine().getStatusCode();
        if (statusCode == 401) {
            throw new FileSystemException("File is unauthorized");
        }
        if (statusCode != 200 && statusCode != 206) {
            try {
                httpGet.abort();
            } catch (Exception e2) {
                Log.e("HttpFileSystem", "Error when HttpGet.abort()" + e2);
            }
            throw new FileSystemException(execute.getStatusLine().getReasonPhrase());
        }
        if (j > 0) {
            if (statusCode == 206) {
                typedMap.put("RBT", true);
            } else {
                typedMap.put("RBT", false);
            }
        }
        if (entity != null) {
            return new c(this, entity.getContent(), httpGet);
        }
        return null;
    }

    @Override // com.estrongs.fs.k, com.estrongs.fs.j
    public InputStream c(String str) {
        return a(str, 0L);
    }
}

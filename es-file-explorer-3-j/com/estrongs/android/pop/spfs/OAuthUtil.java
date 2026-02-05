package com.estrongs.android.pop.spfs;

import com.gmail.yuyang226.flickr.a;
import com.gmail.yuyang226.flickr.d.b;
import com.gmail.yuyang226.flickr.d.c;
import com.gmail.yuyang226.flickr.d.d;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import oauth.signpost.OAuth;
import org.apache.http.entity.mime.MIME;

/* loaded from: classes.dex */
public class OAuthUtil {
    public static final String UTF8 = "UTF-8";

    public static URL buildUrl(URL url, List<a> list) {
        if (list == null || list.size() == 0) {
            return url;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(url.toString());
        Iterator<a> it = list.iterator();
        if (it.hasNext()) {
            stringBuffer.append("?");
        }
        while (it.hasNext()) {
            a next = it.next();
            stringBuffer.append(next.a());
            stringBuffer.append("=");
            Object b2 = next.b();
            if (b2 != null) {
                stringBuffer.append(d.a(b2.toString()));
            }
            if (it.hasNext()) {
                stringBuffer.append("&");
            }
        }
        return new URL(stringBuffer.toString());
    }

    public static String encodeParameters(List<a> list) {
        if (list == null || list.isEmpty()) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                return stringBuffer.toString();
            }
            if (i2 != 0) {
                stringBuffer.append("&");
            }
            a aVar = list.get(i2);
            stringBuffer.append(d.a(aVar.a())).append("=").append(d.a(String.valueOf(aVar.b())));
            i = i2 + 1;
        }
    }

    public static Map<String, String> getDataAsMap(String str) {
        HashMap hashMap = new HashMap();
        if (str != null) {
            for (String str2 : c.a(str, "&")) {
                String[] a2 = c.a(str2, "=");
                if (a2.length == 2) {
                    hashMap.put(a2[0], a2[1]);
                }
            }
        }
        return hashMap;
    }

    private static InputStream getInputStream(URL url, List<a> list) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) buildUrl(url, list).openConnection();
        httpURLConnection.addRequestProperty("Cache-Control", "no-cache,max-age=0");
        httpURLConnection.addRequestProperty("Pragma", "no-cache");
        httpURLConnection.setRequestMethod("GET");
        httpURLConnection.connect();
        return httpURLConnection.getInputStream();
    }

    public static String getLine(URL url, List<a> list) {
        BufferedReader bufferedReader;
        InputStream inputStream = null;
        try {
            InputStream inputStream2 = getInputStream(url, list);
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(inputStream2, "UTF-8"));
                try {
                    StringBuffer stringBuffer = new StringBuffer();
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            String stringBuffer2 = stringBuffer.toString();
                            b.a(inputStream2);
                            b.a(bufferedReader);
                            return stringBuffer2;
                        }
                        stringBuffer.append(readLine);
                    }
                } catch (Throwable th) {
                    th = th;
                    inputStream = inputStream2;
                    b.a(inputStream);
                    b.a(bufferedReader);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                bufferedReader = null;
                inputStream = inputStream2;
            }
        } catch (Throwable th3) {
            th = th3;
            bufferedReader = null;
        }
    }

    public static String readFromStream(InputStream inputStream) {
        BufferedReader bufferedReader;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            try {
                StringBuffer stringBuffer = new StringBuffer();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        String stringBuffer2 = stringBuffer.toString();
                        b.a(inputStream);
                        b.a(bufferedReader);
                        return stringBuffer2;
                    }
                    stringBuffer.append(readLine);
                }
            } catch (Throwable th) {
                th = th;
                b.a(inputStream);
                b.a(bufferedReader);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedReader = null;
        }
    }

    public static String sendPost(URL url, List<a> list) {
        DataOutputStream dataOutputStream;
        int responseCode;
        HttpURLConnection httpURLConnection = null;
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) url.openConnection();
            try {
                httpURLConnection2.setRequestMethod("POST");
                byte[] bytes = encodeParameters(list).getBytes("UTF-8");
                httpURLConnection2.setRequestProperty("Content-Length", Integer.toString(bytes.length));
                httpURLConnection2.addRequestProperty(MIME.CONTENT_TYPE, OAuth.FORM_ENCODED);
                httpURLConnection2.addRequestProperty("Cache-Control", "no-cache,max-age=0");
                httpURLConnection2.addRequestProperty("Pragma", "no-cache");
                httpURLConnection2.setUseCaches(false);
                httpURLConnection2.setDoOutput(true);
                httpURLConnection2.setDoInput(true);
                httpURLConnection2.connect();
                DataOutputStream dataOutputStream2 = new DataOutputStream(httpURLConnection2.getOutputStream());
                try {
                    dataOutputStream2.write(bytes);
                    dataOutputStream2.flush();
                    dataOutputStream2.close();
                    try {
                        responseCode = httpURLConnection2.getResponseCode();
                    } catch (IOException e) {
                        responseCode = httpURLConnection2.getErrorStream() != null ? httpURLConnection2.getResponseCode() : 200;
                    }
                    if (responseCode != 200) {
                        throw new IOException("Connection Failed. Response Code: " + responseCode + ", Response Message: " + httpURLConnection2.getResponseMessage() + ", Error: " + readFromStream(httpURLConnection2.getErrorStream()));
                    }
                    String trim = readFromStream(httpURLConnection2.getInputStream()).trim();
                    b.a(dataOutputStream2);
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return trim;
                } catch (Throwable th) {
                    httpURLConnection = httpURLConnection2;
                    th = th;
                    dataOutputStream = dataOutputStream2;
                    b.a(dataOutputStream);
                    if (httpURLConnection == null) {
                        throw th;
                    }
                    httpURLConnection.disconnect();
                    throw th;
                }
            } catch (Throwable th2) {
                dataOutputStream = null;
                httpURLConnection = httpURLConnection2;
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream = null;
        }
    }
}

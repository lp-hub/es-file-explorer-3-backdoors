package com.estrongs.fs.impl.pcs;

import android.os.Build;
import android.util.Log;
import com.baidu.mobstat.BasicStoreTools;
import com.baidu.sapi2.BDAccountManager;
import com.baidu.sapi2.loginshare.Utils;
import com.estrongs.android.pop.netfs.INetFileSystem;
import com.estrongs.android.pop.netfs.INetRefreshCallback;
import com.estrongs.android.pop.netfs.NetFileInfo;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.netfs.utils.HttpUtils;
import com.estrongs.android.pop.netfs.utils.UploadOutputStream;
import com.estrongs.android.pop.spfs.OAuthConstants;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.DigestInputStream;
import java.security.KeyStore;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.zip.CRC32;
import jcifs.https.Handler;
import jcifs.smb.SmbConstants;
import org.apache.commons.net.SocketClient;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/* loaded from: classes.dex */
public class PcsFileSystem implements INetFileSystem {
    private final String d = "Pcs";
    private final int e = 7;
    private HashMap<String, String> f = new HashMap<>();
    private HashMap<String, String> g = new HashMap<>();
    private HashMap<String, String> h = new HashMap<>();
    private HashMap<String, Long> i = new HashMap<>();
    private String j = null;
    private String k = null;
    private String[] l = {"/files", "/videos", "/music", "/pictures", "/documents", "/apps", "/others"};
    private Random m = new Random();
    private String n = null;

    /* renamed from: a, reason: collision with root package name */
    public static int f3158a = 10485760;
    private static com.estrongs.fs.impl.i.d o = new e();

    /* renamed from: b, reason: collision with root package name */
    static final String f3159b = "os_version=" + Build.VERSION.RELEASE + "&brand_name=" + Build.MODEL + "";
    static final String[] c = {"https://openapi.baidu.com/yunid/device", "https://180.149.132.118/yunid/device"};
    private static final String[] p = {"https://passport.baidu.com/v2/sapi/smsgetlogin", "https://220.181.111.48/v2/sapi/smsgetlogin", "https://123.125.115.81/v2/sapi/smsgetlogin", "https://123.125.114.161/v2/sapi/smsgetlogin", "https://119.75.220.29/v2/sapi/smsgetlogin"};

    /* loaded from: classes.dex */
    public class PcsFileSystemException extends Exception {
        public static final int UNKNOWN_ERROR = -1;
        private static final long serialVersionUID = 1;
        public int errorCode;

        public PcsFileSystemException() {
            this.errorCode = -1;
        }

        public PcsFileSystemException(int i) {
            this.errorCode = -1;
            this.errorCode = i;
        }

        public PcsFileSystemException(Throwable th) {
            super(th);
            this.errorCode = -1;
        }

        @Override // java.lang.Throwable
        public String toString() {
            return "error_code: " + this.errorCode + ", error_msg:" + getMessage();
        }
    }

    private int a(JSONArray jSONArray, int i) {
        Iterator it = jSONArray.iterator();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (!it.hasNext()) {
                return i3;
            }
            i2 = i3 + 1;
        }
    }

    private NetFileInfo a(j jVar) {
        if (jVar == null) {
            return null;
        }
        NetFileInfo netFileInfo = new NetFileInfo();
        netFileInfo.path = jVar.f;
        netFileInfo.name = jVar.n;
        netFileInfo.lastModifiedTime = jVar.i;
        netFileInfo.lastModifiedTime *= 1000;
        netFileInfo.readable = true;
        netFileInfo.writable = true;
        netFileInfo.hidden = netFileInfo.name.startsWith(".");
        netFileInfo.isDirectory = jVar.g == 1;
        netFileInfo.size = jVar.j;
        netFileInfo.folder_type = jVar.l;
        netFileInfo.md5_block_size = f3158a;
        netFileInfo.md5s = jVar.h;
        return netFileInfo;
    }

    private j a(Object obj, String str) {
        try {
            Map map = (Map) obj;
            j jVar = new j();
            String str2 = (String) map.get("path");
            jVar.n = ak.d(str2);
            jVar.f = e(str2, str);
            jVar.c = "" + map.get("fs_id");
            jVar.j = Long.parseLong(map.get("size") + "");
            jVar.g = HttpUtils.getInt(map, "isdir");
            Object obj2 = map.get("mtime");
            if (obj2 == null) {
                obj2 = map.get("server_mtime");
            }
            if (obj2 == null) {
                obj2 = "";
            }
            jVar.i = Integer.parseInt(obj2 + "");
            jVar.h = (String) map.get("md5");
            if (jVar.h == null) {
                jVar.h = "";
            }
            return jVar;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private InputStream a(String str, String str2, int i, int i2, int i3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("method", "generate"));
        if (str.startsWith("auth_code:")) {
            arrayList.add(new BasicNameValuePair("access_token", h(str)));
        } else if (str.startsWith("bduss:")) {
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
        }
        if (str2 != null) {
            arrayList.add(new BasicNameValuePair("path", str2));
        }
        int i4 = i >= 0 ? i : 0;
        int i5 = i4 <= 100 ? i4 : 100;
        if (i2 > 1600) {
            i2 = 1600;
        }
        if (i3 > 1600) {
            i3 = 1600;
        }
        arrayList.add(new BasicNameValuePair("quality", String.valueOf(i5)));
        arrayList.add(new BasicNameValuePair("width", String.valueOf(i2)));
        arrayList.add(new BasicNameValuePair("height", String.valueOf(i3)));
        HttpGet httpGet = new HttpGet("https://pcs.baidu.com/rest/2.0/pcs/thumbnail?" + a(arrayList));
        if (str.startsWith("bduss:")) {
            httpGet.addHeader("Cookie", "BDUSS=" + h(str));
        }
        try {
            HttpResponse execute = a().execute(httpGet);
            if (execute != null) {
                return execute.getEntity().getContent();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    private InputStream a(String str, String str2, long j) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("method", "download"));
        if (str.startsWith("auth_code:")) {
            arrayList.add(new BasicNameValuePair("access_token", h(str)));
        } else if (str.startsWith("bduss:")) {
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
        }
        if (str2 != null) {
            arrayList.add(new BasicNameValuePair("path", str2));
        }
        HttpGet httpGet = new HttpGet("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(arrayList));
        if (str.startsWith("bduss:")) {
            httpGet.addHeader("Cookie", "BDUSS=" + h(str));
        }
        if (j != 0) {
            httpGet.addHeader("Range", "bytes=" + j + "-");
        }
        if (httpGet == null) {
            return null;
        }
        try {
            HttpResponse execute = a().execute(httpGet);
            int statusCode = execute.getStatusLine().getStatusCode();
            if ((statusCode == 200 || statusCode == 206) && execute != null) {
                return new c(this, execute.getEntity().getContent(), httpGet);
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String a(String str) {
        String replace;
        if (str.startsWith("/files")) {
            replace = str.substring("/files".length());
        } else {
            replace = str.substring(str.indexOf("/", 1) + 1).replace(">", "/");
            if (replace.charAt(0) != '/') {
                replace = "/" + replace;
            }
        }
        return (replace == null || replace.length() == 0) ? "/" : replace;
    }

    public static String a(String str, long j) {
        FileInputStream fileInputStream;
        Throwable th;
        DigestInputStream digestInputStream;
        String str2 = null;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            fileInputStream = new FileInputStream(str);
            try {
                digestInputStream = new DigestInputStream(fileInputStream, messageDigest);
                try {
                    byte[] bArr = new byte[65536];
                    while (j > 0) {
                        int read = digestInputStream.read(bArr, 0, j < ((long) 65536) ? (int) j : 65536);
                        if (read <= 0) {
                            break;
                        }
                        j -= read;
                    }
                    str2 = new BigInteger(1, digestInputStream.getMessageDigest().digest()).toString(16);
                    while (str2.length() < 32) {
                        str2 = "0" + str2;
                    }
                    try {
                        digestInputStream.close();
                    } catch (Exception e) {
                    }
                    try {
                        fileInputStream.close();
                    } catch (Exception e2) {
                    }
                } catch (Exception e3) {
                    try {
                        digestInputStream.close();
                    } catch (Exception e4) {
                    }
                    try {
                        fileInputStream.close();
                    } catch (Exception e5) {
                    }
                    return str2;
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        digestInputStream.close();
                    } catch (Exception e6) {
                    }
                    try {
                        fileInputStream.close();
                        throw th;
                    } catch (Exception e7) {
                        throw th;
                    }
                }
            } catch (Exception e8) {
                digestInputStream = null;
            } catch (Throwable th3) {
                digestInputStream = null;
                th = th3;
            }
        } catch (Exception e9) {
            digestInputStream = null;
            fileInputStream = null;
        } catch (Throwable th4) {
            fileInputStream = null;
            th = th4;
            digestInputStream = null;
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str, String str2, long j, List<String> list) {
        try {
            if (str == null) {
                throw new RuntimeException("Invalid upload target: null");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(new BasicNameValuePair("method", "createsuperfile"));
            if (str2.startsWith("auth_code:")) {
                arrayList.add(new BasicNameValuePair("access_token", h(str2)));
            } else if (str2.startsWith("bduss:")) {
                arrayList.add(new BasicNameValuePair("app_id", "266719"));
            }
            arrayList.add(new BasicNameValuePair("path", str));
            String str3 = "https://pcs.baidu.com/rest/2.0/pcs/file?" + a(arrayList);
            String str4 = "{\"block_list\":[";
            int i = 0;
            while (i < list.size() - 1) {
                str4 = str4 + "\"" + list.get(i) + "\",";
                i++;
            }
            while (i < list.size()) {
                String str5 = str4 + "\"" + list.get(i) + "\"";
                i++;
                str4 = str5;
            }
            String str6 = str4 + "]}";
            HttpPost httpPost = new HttpPost(str3);
            if (str2.startsWith("bduss:")) {
                httpPost.addHeader("Cookie", "BDUSS=" + h(str2));
            }
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new BasicNameValuePair("param", str6));
            try {
                httpPost.setEntity(new UrlEncodedFormEntity(arrayList2, "utf-8"));
                Map parseAsJSON = HttpUtils.parseAsJSON(a(httpPost));
                if (!a(parseAsJSON, "createsuperfile")) {
                    Log.e("Pcs", "commit failed");
                    return null;
                }
                Object obj = parseAsJSON.get("path");
                if (obj != null) {
                    return (String) obj;
                }
                Log.e("Pcs", "commit data");
                return null;
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
                throw new RuntimeException(e.getMessage());
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static String a(List<NameValuePair> list) {
        if (list == null || list.size() <= 0) {
            return null;
        }
        try {
            return EntityUtils.toString(new UrlEncodedFormEntity(list, "utf8"));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private HashMap<String, j> a(String str, String str2, String str3, String str4, HashMap<String, Object> hashMap) {
        boolean z;
        HashMap hashMap2;
        Object obj;
        Object obj2;
        Object a2;
        String g = g(str3);
        try {
            String d = d(str, str2);
            int i = 0;
            int i2 = 10000;
            com.estrongs.android.util.a a3 = com.estrongs.android.util.a.a();
            if (a3 != null) {
                int i3 = i(d);
                String str5 = null;
                if (i3 == 0) {
                    str5 = "Baidu_Active";
                } else if (i3 == 1) {
                    str5 = "Direct_Active";
                } else if (i3 == 2) {
                    str5 = "RenRen_Active";
                } else if (i3 == 3) {
                    str5 = "Sina_Active";
                } else if (i3 == 4) {
                    str5 = "QQ_Active";
                }
                if (str5 != null) {
                    a3.b(str5, str5);
                }
            }
            if (hashMap != null && hashMap.containsKey(INetFileSystem.LIST_LIMIT) && hashMap.containsKey(INetFileSystem.LIST_OFFSET)) {
                i2 = ((Integer) hashMap.get(INetFileSystem.LIST_LIMIT)).intValue();
                int intValue = ((Integer) hashMap.get(INetFileSystem.LIST_OFFSET)).intValue();
                if (i2 > 0) {
                    if (!hashMap.containsKey("total_entries")) {
                        hashMap.put("total_entries", new HashMap());
                    }
                    HashMap hashMap3 = (HashMap) hashMap.get("total_entries");
                    if (!hashMap.containsKey("page_num")) {
                        hashMap.put("page_num", 0);
                    }
                    hashMap.put("page_num", Integer.valueOf(((Integer) hashMap.get("page_num")).intValue() + 1));
                    z = true;
                    hashMap2 = hashMap3;
                    i = intValue;
                } else {
                    z = false;
                    i = intValue;
                    hashMap2 = null;
                }
            } else {
                z = false;
                hashMap2 = null;
            }
            if (k(g)) {
                JSONArray jSONArray = new JSONArray();
                if (g.equals("/music")) {
                    a2 = a(jSONArray, OAuthConstants.VERSION_2, d, i / i2, i2);
                    a((JSONArray) a2, i2);
                } else if (g.equals("/videos")) {
                    a2 = a(jSONArray, "1", d, i / i2, i2);
                    a((JSONArray) a2, i2);
                } else if (g.equals("/pictures")) {
                    a2 = a(jSONArray, "3", d, i / i2, i2);
                    a((JSONArray) a2, i2);
                } else if (g.equals("/documents")) {
                    a2 = a(jSONArray, "4", d, i / i2, i2);
                    a((JSONArray) a2, i2);
                } else if (g.equals("/apps")) {
                    a2 = a(jSONArray, "5", d, i / i2, i2);
                    a((JSONArray) a2, i2);
                } else {
                    a2 = a(jSONArray, "6", d, i / i2, i2);
                    a((JSONArray) a2, i2);
                }
                obj2 = a2;
                obj = null;
            } else {
                if (g.endsWith("/")) {
                    obj2 = a(i, i2);
                    obj = null;
                } else {
                    String g2 = g(a(g));
                    Map parseAsJSON = HttpUtils.parseAsJSON(f(g2, d));
                    if (a(parseAsJSON, "list")) {
                        obj = parseAsJSON.get("list");
                    } else {
                        Log.e("Pcs", "get list failed");
                        obj = null;
                    }
                    Map parseAsJSON2 = HttpUtils.parseAsJSON(b(g2, "name", "asc", "" + i + "-" + (i + i2), d));
                    if (!a(parseAsJSON2, "list")) {
                        Log.e("Pcs", "get list failed");
                        return null;
                    }
                    obj2 = parseAsJSON2.get("list");
                }
                if (obj2 == null) {
                    Log.e("Pcs", "list no data");
                    return null;
                }
            }
            HashMap<String, j> hashMap4 = new HashMap<>();
            if (obj2 instanceof JSONArray) {
                Iterator it = ((JSONArray) obj2).iterator();
                while (it.hasNext()) {
                    j a4 = a(it.next(), g);
                    if (a4 != null) {
                        hashMap4.put(a4.f, a4);
                        if (z) {
                            hashMap2.put(a4.f, a4);
                        }
                        if (obj != null) {
                            Iterator it2 = ((JSONArray) obj).iterator();
                            while (it2.hasNext()) {
                                Map map = (Map) it2.next();
                                if (a4.f.equals(e((String) map.get("path"), g))) {
                                    a4.f3172b = (String) map.get("download");
                                }
                            }
                        }
                    }
                }
            }
            if (z && (hashMap4.size() == 0 || hashMap4.size() < i2)) {
                hashMap2.clear();
                hashMap.remove("total_entries");
                hashMap.remove("page_num");
                hashMap.put(INetFileSystem.LIST_FINISHED, true);
            }
            return hashMap4;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private HashMap<String, j> a(String str, String str2, String str3, HashMap<String, Object> hashMap) {
        return a(str, str2, str3, (String) null, hashMap);
    }

    private HttpResponse a(String str, String str2, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("method", "listbycategory"));
        arrayList.add(new BasicNameValuePair("category", str));
        arrayList.add(new BasicNameValuePair("pn", "" + i));
        arrayList.add(new BasicNameValuePair(INetFileSystem.LIST_LIMIT, "" + i2));
        if (str2.startsWith("auth_code:")) {
            arrayList.add(new BasicNameValuePair("access_token", h(str2)));
        } else if (str2.startsWith("bduss:")) {
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
        }
        HttpGet httpGet = new HttpGet("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(arrayList));
        if (str2.startsWith("bduss:")) {
            httpGet.addHeader("Cookie", "BDUSS=" + h(str2));
        }
        return a(httpGet);
    }

    private HttpResponse a(HttpRequestBase httpRequestBase) {
        if (httpRequestBase != null) {
            try {
                return a().execute(httpRequestBase);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.n = "Network error";
        return null;
    }

    public static HttpClient a() {
        return a(true);
    }

    public static HttpClient a(boolean z) {
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            h hVar = new h(keyStore);
            hVar.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme("https", hVar, Handler.DEFAULT_HTTPS_PORT));
            ThreadSafeClientConnManager threadSafeClientConnManager = new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry);
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, SmbConstants.DEFAULT_RESPONSE_TIMEOUT);
            HttpConnectionParams.setSoTimeout(basicHttpParams, SmbConstants.DEFAULT_RESPONSE_TIMEOUT);
            if (!z) {
                HttpClientParams.setRedirecting(basicHttpParams, false);
            }
            return new DefaultHttpClient(threadSafeClientConnManager, basicHttpParams);
        } catch (Exception e) {
            return new DefaultHttpClient();
        }
    }

    private JSONArray a(int i, int i2) {
        JSONArray jSONArray = new JSONArray();
        for (int i3 = i; i3 < this.l.length && i3 < i + i2; i3++) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("path", "" + this.l[i3]);
            jSONObject.put("size", 0);
            jSONObject.put("isdir", 1);
            jSONObject.put("mtime", 0);
            jSONObject.put("md5", "");
            jSONObject.put("fs_id", this.l[i3].substring(1));
            jSONArray.add(jSONObject);
        }
        return jSONArray;
    }

    private JSONArray a(JSONArray jSONArray, String str, String str2, int i, int i2) {
        JSONArray jSONArray2;
        Map parseAsJSON = HttpUtils.parseAsJSON(a(str, str2, i, i2));
        if (a(parseAsJSON, "listbycategory") && (jSONArray2 = (JSONArray) parseAsJSON.get("list")) != null && (jSONArray2 instanceof JSONArray)) {
            return jSONArray2;
        }
        return null;
    }

    private void a(Map map) {
        Map map2;
        if (a(map, "list_task")) {
            return;
        }
        Log.d("Pcs", "addDownload failed: " + map);
        JSONParser jSONParser = new JSONParser();
        HashMap hashMap = new HashMap();
        try {
            map2 = (Map) jSONParser.parse(String.valueOf(map.get("RESULT")));
        } catch (ParseException e) {
            e.printStackTrace();
            map2 = hashMap;
        }
        PcsFileSystemException pcsFileSystemException = new PcsFileSystemException();
        pcsFileSystemException.errorCode = aw.a(map2.get("error_code"));
        throw pcsFileSystemException;
    }

    private boolean a(String str, String str2, long j, String str3) {
        if (j < 1048576) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("method", "rapidupload"));
        if (str.startsWith("auth_code:")) {
            arrayList.add(new BasicNameValuePair("access_token", h(str)));
        } else if (str.startsWith("bduss:")) {
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
        }
        if (str3 != null) {
            arrayList.add(new BasicNameValuePair("path", str3));
        }
        arrayList.add(new BasicNameValuePair("content-length", "" + j));
        arrayList.add(new BasicNameValuePair("content-md5", a(str2, j)));
        arrayList.add(new BasicNameValuePair("slice-md5", a(str2, 262144L)));
        arrayList.add(new BasicNameValuePair("content-crc32", l(str2)));
        arrayList.add(new BasicNameValuePair("ondup", "overwrite"));
        HttpPost httpPost = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(arrayList));
        if (str.startsWith("bduss:")) {
            httpPost.addHeader("Cookie", "BDUSS=" + h(str));
        }
        try {
            if (a(HttpUtils.parseAsJSON(a(httpPost)), "rapidupload")) {
                return true;
            }
            Log.e("Pcs", "move failed");
            return false;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Map map, String str) {
        Object obj;
        if (map.get("ERROR") == null) {
            return true;
        }
        this.n = "Unknow error";
        try {
            JSONObject jSONObject = (JSONObject) new JSONParser().parse(map.get("RESULT").toString());
            if (jSONObject != null && (obj = jSONObject.get("error_code")) != null) {
                int a2 = aw.a(obj);
                this.n = jSONObject.get("error_msg").toString() + " (errorcode:" + a2 + ")";
                if (o != null) {
                    o.a(str, a2, this.n);
                }
            }
        } catch (Exception e) {
        }
        return false;
    }

    public static String b() {
        return "https://openapi.baidu.com" + HttpUtils.buildGetUrl("/oauth/2.0/authorize", new Object[]{"response_type", "code", "client_id", "4YchBAkgxfWug3KRYCGOv8EK", "redirect_uri", "http://www.estrongs.com", "display", "mobile", "scope", "basic netdisk"}, true);
    }

    public static String b(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("tpl", "es"));
        if (i(str, "os_type").equals("sinaweibo")) {
            arrayList.add(new BasicNameValuePair("type", OAuthConstants.VERSION_2));
        } else if (i(str, "os_type").equals("qq")) {
            arrayList.add(new BasicNameValuePair("type", "15"));
        } else if (i(str, "os_type").equals("renren")) {
            arrayList.add(new BasicNameValuePair("type", "1"));
        }
        arrayList.add(new BasicNameValuePair("u", "www.estongs.com"));
        arrayList.add(new BasicNameValuePair("display", "native"));
        arrayList.add(new BasicNameValuePair("act", "implicit"));
        return "http://passport.baidu.com/phoenix/account/startlogin?" + a(arrayList);
    }

    private HttpResponse b(String str, String str2, String str3, String str4, String str5) {
        ArrayList arrayList = new ArrayList();
        if (str != null) {
            arrayList.add(new BasicNameValuePair("path", str));
        }
        arrayList.add(new BasicNameValuePair("method", "list"));
        if (str5.startsWith("auth_code:")) {
            arrayList.add(new BasicNameValuePair("access_token", h(str5)));
        } else if (str5.startsWith("bduss:")) {
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
        }
        if (str2 != null && (str2.equals("time") || str2.equals("name") || str2.equals("size"))) {
            arrayList.add(new BasicNameValuePair("by", str2));
        }
        if (str3 != null && (str3.equals("asc") || str3.equals("desc"))) {
            arrayList.add(new BasicNameValuePair("order", str3));
        }
        if (str4 != null) {
            arrayList.add(new BasicNameValuePair(INetFileSystem.LIST_LIMIT, str4));
        }
        HttpGet httpGet = new HttpGet("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(arrayList));
        if (str5.startsWith("bduss:")) {
            httpGet.addHeader("Cookie", "BDUSS=" + h(str5));
        }
        return a(httpGet);
    }

    private boolean c() {
        HashMap<String, String> hashMap = new HashMap<>();
        HashMap<String, String> hashMap2 = new HashMap<>();
        try {
            File file = new File(this.k + "/Pcs.cfg");
            if (file.exists()) {
                DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(dataInputStream));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    String[] split = readLine.split("#####");
                    hashMap.put(split[0], split[1]);
                    hashMap2.put(split[0], split[2]);
                }
                dataInputStream.close();
            }
            synchronized (this.f) {
                this.f = hashMap;
            }
            synchronized (this.h) {
                this.h = hashMap2;
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    private String d(String str, String str2) {
        String str3;
        String str4;
        this.n = "No error";
        synchronized (this.f) {
            str3 = this.f.get(str);
        }
        if (str3 != null) {
            return str3;
        }
        synchronized (this.h) {
            str4 = this.h.get(str);
        }
        if (str4 == null) {
            return null;
        }
        try {
            HttpResponse execute = a().execute(new HttpGet("https://openapi.baidu.com" + HttpUtils.buildGetUrl("/oauth/2.0/token", new Object[]{"grant_type", "refresh_token", "refresh_token", str4, "client_id", "4YchBAkgxfWug3KRYCGOv8EK", "client_secret", "BPZEkGy6js8a6M86Gw7q5E4yACTKVFqX"})));
            Map parseAsJSON = HttpUtils.parseAsJSON(execute);
            if (execute.getEntity() != null) {
                execute.getEntity().consumeContent();
            }
            if (!a(parseAsJSON, "refresh_token")) {
                Log.e("Pcs", "get token return error");
                return null;
            }
            String str5 = (String) parseAsJSON.get("access_token");
            if (str5 == null) {
                Log.e("Pcs", "can't get the token");
                return null;
            }
            synchronized (this.f) {
                this.f.put(str, "auth_code:" + str5);
            }
            String str6 = (String) parseAsJSON.get("refresh_token");
            if (str6 != null && !str6.equals(str4)) {
                synchronized (this.h) {
                    this.h.put(str, str6);
                }
            }
            d();
            return str5;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private boolean d() {
        boolean z;
        synchronized (this.f) {
            File file = new File(this.k + "/Pcs.cfg");
            file.delete();
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
                for (Map.Entry<String, String> entry : this.f.entrySet()) {
                    String key = entry.getKey();
                    bufferedWriter.write(key + "#####" + entry.getValue() + "#####" + this.h.get(key) + SocketClient.NETASCII_EOL);
                }
                bufferedWriter.flush();
                bufferedWriter.close();
                z = true;
            } catch (Exception e) {
                z = false;
            }
        }
        return z;
    }

    public static String e(String str) {
        try {
            HttpPost httpPost = new HttpPost("http://dwz.cn/create.php");
            HttpUtils.setParameters(httpPost, new String[]{"url", str});
            Map parseAsJSON = HttpUtils.parseAsJSON(a().execute(httpPost));
            if (HttpUtils.getInt(parseAsJSON, "status") != 0) {
                return null;
            }
            return (String) parseAsJSON.get("tinyurl");
        } catch (Exception e) {
            return null;
        }
    }

    private String e(String str, String str2) {
        return str2.startsWith("/files") ? str2 + "/" + ak.d(str) : str2 + "/" + str.replace("/", ">");
    }

    private boolean e(String str, String str2, String str3) {
        if (str2 != null && str3 != null && str2.equals(str3)) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("method", "move"));
        if (str.startsWith("auth_code:")) {
            arrayList.add(new BasicNameValuePair("access_token", h(str)));
        } else if (str.startsWith("bduss:")) {
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
        }
        if (str2 != null) {
            arrayList.add(new BasicNameValuePair(TypedMap.KEY_FROM, str2));
        }
        if (str3 != null) {
            arrayList.add(new BasicNameValuePair(TypedMap.KEY_TO, str3));
        }
        HttpPost httpPost = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(arrayList));
        if (str.startsWith("bduss:")) {
            httpPost.addHeader("Cookie", "BDUSS=" + h(str));
        }
        try {
            if (a(HttpUtils.parseAsJSON(a(httpPost)), "move")) {
                return true;
            }
            Log.e("Pcs", "move failed");
            return false;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private static native String encryptDeviceId(String str, String str2);

    public static String f(String str) {
        try {
            HttpPost httpPost = new HttpPost("http://dwz.cn/query.php");
            HttpUtils.setParameters(httpPost, new String[]{"tinyurl", str});
            Map parseAsJSON = HttpUtils.parseAsJSON(a().execute(httpPost));
            if (HttpUtils.getInt(parseAsJSON, "status") != 0) {
                return null;
            }
            return (String) parseAsJSON.get("longurl");
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private HttpResponse f(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("method", "list"));
        if (str != null) {
            arrayList.add(new BasicNameValuePair("dir", str));
        }
        arrayList.add(new BasicNameValuePair("type", "public"));
        if (str2.startsWith("auth_code:")) {
            arrayList.add(new BasicNameValuePair("access_token", h(str2)));
        } else if (str2.startsWith("bduss:")) {
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
        }
        HttpGet httpGet = new HttpGet("https://pcs.baidu.com/rest/2.0/pcs/share?" + a(arrayList));
        if (str2.startsWith("bduss:")) {
            httpGet.addHeader("Cookie", "BDUSS=" + h(str2));
        }
        return a(httpGet);
    }

    private boolean f(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("method", "copy"));
        if (str.startsWith("auth_code:")) {
            arrayList.add(new BasicNameValuePair("access_token", h(str)));
        } else if (str.startsWith("bduss:")) {
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
        }
        if (str2 != null) {
            arrayList.add(new BasicNameValuePair(TypedMap.KEY_FROM, str2));
        }
        if (str3 != null) {
            arrayList.add(new BasicNameValuePair(TypedMap.KEY_TO, str3));
        }
        HttpPost httpPost = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(arrayList));
        if (str.startsWith("bduss:")) {
            httpPost.addHeader("Cookie", "BDUSS=" + h(str));
        }
        try {
            if (a(HttpUtils.parseAsJSON(a(httpPost)), "copy")) {
                return true;
            }
            Log.e("Pcs", "copy failed");
            return false;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private String g(String str) {
        return (!str.endsWith("/") || str.equals("/")) ? str : str.substring(0, str.length() - 1);
    }

    private String g(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("method", "mkdir"));
        if (str.startsWith("auth_code:")) {
            arrayList.add(new BasicNameValuePair("access_token", h(str)));
        } else if (str.startsWith("bduss:")) {
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
        }
        if (str2 != null) {
            arrayList.add(new BasicNameValuePair("path", str2));
        }
        HttpPost httpPost = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(arrayList));
        if (str.startsWith("bduss:")) {
            httpPost.addHeader("Cookie", "BDUSS=" + h(str));
        }
        try {
            Map parseAsJSON = HttpUtils.parseAsJSON(a(httpPost));
            if (!a(parseAsJSON, "mkdir")) {
                Log.e("Pcs", "mkdir failed");
                return null;
            }
            Object obj = parseAsJSON.get("path");
            if (obj != null) {
                return (String) obj;
            }
            Log.e("Pcs", "mkdir no data");
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String h(String str) {
        return str.startsWith("bduss:") ? aw.d(str.substring("bduss:".length())).split("\n")[0] : str.startsWith("auth_code:") ? aw.d(str.substring("auth_code:".length())).split("\n")[0] : str;
    }

    private boolean h(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("method", "delete"));
        if (str.startsWith("auth_code:")) {
            arrayList.add(new BasicNameValuePair("access_token", h(str)));
        } else if (str.startsWith("bduss:")) {
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
        }
        if (str2 != null) {
            arrayList.add(new BasicNameValuePair("path", str2));
        }
        HttpPost httpPost = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(arrayList));
        if (str.startsWith("bduss:")) {
            httpPost.addHeader("Cookie", "BDUSS=" + h(str));
        }
        try {
            if (a(HttpUtils.parseAsJSON(a(httpPost)), "delete")) {
                return true;
            }
            Log.e("Pcs", "delete failed");
            return false;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    private int i(String str) {
        if (!str.startsWith("bduss:")) {
            return 0;
        }
        String[] split = aw.d(str.substring("bduss:".length())).split("\n");
        if (split.length == 4 && split[3].equals("临时用户")) {
            return 1;
        }
        if (split.length == 5 && split[4].equals("1")) {
            return 2;
        }
        if (split.length == 5 && split[4].equals(OAuthConstants.VERSION_2)) {
            return 3;
        }
        return (split.length == 5 && split[4].equals("15")) ? 4 : 0;
    }

    private static String i(String str, String str2) {
        String[] split = str.split("&");
        if (split != null) {
            for (String str3 : split) {
                String[] split2 = str3.split("=");
                if (split2.length == 2 && split2[0].equals(str2)) {
                    return split2[1];
                }
            }
        }
        return "";
    }

    private String j(String str) {
        String g;
        int lastIndexOf;
        if (!str.equals("/") && (lastIndexOf = (g = g(str)).lastIndexOf(47)) >= 0) {
            return g.substring(lastIndexOf + 1);
        }
        return null;
    }

    private boolean k(String str) {
        for (int i = 1; i < this.l.length; i++) {
            if (str.equals(this.l[i])) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x0073 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String l(String str) {
        FileInputStream fileInputStream;
        String str2;
        IOException e;
        FileNotFoundException e2;
        InputStream inputStream = null;
        try {
            try {
                fileInputStream = new FileInputStream(str);
                try {
                    CRC32 crc32 = new CRC32();
                    byte[] bArr = new byte[65536];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        crc32.update(bArr, 0, read);
                    }
                    str2 = Long.toHexString(crc32.getValue());
                    while (str2.length() < 8) {
                        try {
                            str2 = "0" + str2;
                        } catch (FileNotFoundException e3) {
                            e2 = e3;
                            e2.printStackTrace();
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                }
                            }
                            return str2;
                        } catch (IOException e5) {
                            e = e5;
                            e.printStackTrace();
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e6) {
                                    e6.printStackTrace();
                                }
                            }
                            return str2;
                        }
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e7) {
                            e7.printStackTrace();
                        }
                    }
                } catch (FileNotFoundException e8) {
                    str2 = null;
                    e2 = e8;
                } catch (IOException e9) {
                    str2 = null;
                    e = e9;
                }
            } catch (Throwable th) {
                th = th;
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (IOException e10) {
                        e10.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (FileNotFoundException e11) {
            fileInputStream = null;
            str2 = null;
            e2 = e11;
        } catch (IOException e12) {
            fileInputStream = null;
            str2 = null;
            e = e12;
        } catch (Throwable th2) {
            th = th2;
            if (0 != 0) {
            }
            throw th;
        }
        return str2;
    }

    private String m(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("method", "upload"));
        if (str.startsWith("auth_code:")) {
            arrayList.add(new BasicNameValuePair("access_token", h(str)));
        } else if (str.startsWith("bduss:")) {
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
        }
        arrayList.add(new BasicNameValuePair("type", "tmpfile"));
        return "https://pcs.baidu.com/rest/2.0/pcs/file?" + a(arrayList);
    }

    public InputStream a(String str, String str2, String str3, int i, int i2) {
        InputStream a2;
        try {
            String d = d(str, str2);
            if (d == null) {
                Log.e("Pcs", "getThumbnail, can't get the token");
                a2 = null;
            } else {
                a2 = a(d, a(str3), 100, i, i2);
            }
            return a2;
        } catch (Exception e) {
            return null;
        }
    }

    public OutputStream a(String str, String str2, String str3, long j) {
        return getFileOutputStream(str, str2, str3, j, false);
    }

    public Object a(String str, String str2, String str3, String str4, String str5) {
        String d = d(str, str2);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("ptpl", "esfb"));
        arrayList.add(new BasicNameValuePair(BDAccountManager.KEY_USERNAME, str3));
        arrayList.add(new BasicNameValuePair("password", str4));
        arrayList.add(new BasicNameValuePair("bduss", h(d)));
        arrayList.add(new BasicNameValuePair("captcha", str5));
        HttpPost httpPost = new HttpPost("https://openapi.baidu.com/yunid/user/fulfilbinding");
        HttpClient a2 = a();
        try {
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "utf-8"));
            return HttpUtils.parseAsJSON(a2.execute(httpPost));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String a(String str, String str2, String str3, String str4) {
        try {
            if (!a(str, str2, str4)) {
                mkDirs(str, str2, str4);
            }
            if (this.h.size() == 0) {
                c();
            }
            String d = d(str, str2);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new BasicNameValuePair("method", "add_task"));
            if (str3.startsWith(Utils.https)) {
                str3 = str3.replace(Utils.https, Utils.http);
            }
            arrayList.add(new BasicNameValuePair("source_url", str3));
            arrayList.add(new BasicNameValuePair("save_path", str4));
            if (d.startsWith("auth_code:")) {
                arrayList.add(new BasicNameValuePair("access_token", h(d)));
                arrayList.add(new BasicNameValuePair("app_id", "266719"));
            } else if (d.startsWith("bduss:")) {
                arrayList.add(new BasicNameValuePair("app_id", "266719"));
                arrayList.add(new BasicNameValuePair("BDUSS", h(d)));
            }
            arrayList.add(new BasicNameValuePair("rate_limit", "10"));
            HttpPost httpPost = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/services/cloud_dl?" + a(arrayList));
            if (d.startsWith("bduss:")) {
                httpPost.addHeader("Cookie", "BDUSS=" + h(d));
            }
            try {
                Map parseAsJSON = HttpUtils.parseAsJSON(a(httpPost));
                a(parseAsJSON);
                Object obj = parseAsJSON.get("task_id");
                if (obj != null) {
                    return String.valueOf(obj);
                }
                Log.d("Pcs", "addDownload no data: " + parseAsJSON);
                throw new PcsFileSystemException(-1);
            } catch (Exception e) {
                throw new PcsFileSystemException(e);
            }
        } catch (NetFsException e2) {
            throw new PcsFileSystemException(e2);
        }
    }

    public List<a> a(String str, String str2, TypedMap typedMap) {
        if (this.h.size() == 0) {
            c();
        }
        String d = d(str, str2);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("method", "list_task"));
        if (aw.b((CharSequence) typedMap.getString("source_url"))) {
            arrayList.add(new BasicNameValuePair("source_url", typedMap.getString("source_url")));
        }
        if (aw.b((CharSequence) typedMap.getString("save_path"))) {
            arrayList.add(new BasicNameValuePair("save_path", typedMap.getString("save_path")));
        }
        if (aw.b((CharSequence) typedMap.getString("start"))) {
            arrayList.add(new BasicNameValuePair("start", typedMap.getString("start")));
        }
        if (aw.b((CharSequence) typedMap.getString(INetFileSystem.LIST_LIMIT))) {
            arrayList.add(new BasicNameValuePair(INetFileSystem.LIST_LIMIT, typedMap.getString(INetFileSystem.LIST_LIMIT)));
        }
        if (aw.b((CharSequence) typedMap.getString("asc"))) {
            arrayList.add(new BasicNameValuePair("asc", typedMap.getString("asc")));
        }
        if (aw.b((CharSequence) typedMap.getString("status"))) {
            arrayList.add(new BasicNameValuePair("status", typedMap.getString("status")));
        }
        if (aw.b((CharSequence) typedMap.getString("need_task_info"))) {
            arrayList.add(new BasicNameValuePair("need_task_info", typedMap.getString("need_task_info")));
        }
        if (d.startsWith("auth_code:")) {
            arrayList.add(new BasicNameValuePair("access_token", h(d)));
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
        } else if (d.startsWith("bduss:")) {
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
            arrayList.add(new BasicNameValuePair("BDUSS", h(d)));
        }
        HttpPost httpPost = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/services/cloud_dl?" + a(arrayList));
        if (d.startsWith("bduss:")) {
            httpPost.addHeader("Cookie", "BDUSS=" + h(d));
        }
        try {
            Map parseAsJSON = HttpUtils.parseAsJSON(a(httpPost));
            a(parseAsJSON);
            Object obj = parseAsJSON.get("task_info");
            if (obj == null) {
                Log.d("Pcs", "addDownload no data: " + parseAsJSON);
                throw new PcsFileSystemException(-1);
            }
            LinkedList linkedList = new LinkedList();
            if (obj instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) obj;
                int size = jSONArray.size();
                for (int i = 0; i < size; i++) {
                    JSONObject jSONObject = (JSONObject) jSONArray.get(i);
                    String aY = ak.aY(jSONObject.get("save_path").toString());
                    String d2 = ak.d(jSONObject.get("save_path").toString());
                    a aVar = new a(str, str2, jSONObject.get("source_url").toString(), aY);
                    aVar.f3160a = jSONObject.get("task_id").toString();
                    aVar.putExtra("name", d2);
                    aVar.putExtra("status", jSONObject.get("status").toString());
                    linkedList.add(aVar);
                }
            }
            return linkedList;
        } catch (Exception e) {
            throw new PcsFileSystemException(e);
        }
    }

    public Map<String, NetFileInfo> a(String str, String str2, String str3, boolean z, INetRefreshCallback iNetRefreshCallback, HashMap<String, Object> hashMap, String str4) {
        if (this.h.size() == 0) {
            c();
        }
        if (str3 == null) {
            return null;
        }
        try {
            HashMap<String, j> a2 = a(str, str2, str3, hashMap);
            if (a2 == null) {
                return null;
            }
            HashMap hashMap2 = new HashMap();
            for (String str5 : a2.keySet()) {
                j jVar = a2.get(str5);
                NetFileInfo a3 = a(jVar);
                a3.putExtra(NetFileInfo.PUBLIC_SHARE, jVar.f3172b);
                if (a3 != null) {
                    hashMap2.put(str5, a3);
                }
            }
            return hashMap2;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void a(String str, String str2, a aVar, int i) {
        if (this.h.size() == 0) {
            c();
        }
        String d = d(str, str2);
        ArrayList arrayList = new ArrayList();
        if (d.startsWith("auth_code:")) {
            arrayList.add(new BasicNameValuePair("access_token", h(d)));
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
        } else if (d.startsWith("bduss:")) {
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
            arrayList.add(new BasicNameValuePair("BDUSS", h(d)));
        }
        arrayList.add(new BasicNameValuePair("method", "query_task"));
        arrayList.add(new BasicNameValuePair("task_ids", aVar.f3160a));
        arrayList.add(new BasicNameValuePair("op_type", String.valueOf(i)));
        HttpPost httpPost = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/services/cloud_dl?" + a(arrayList));
        if (d.startsWith("bduss:")) {
            httpPost.addHeader("Cookie", "BDUSS=" + h(d));
        }
        HttpResponse a2 = a(httpPost);
        new HashMap();
        try {
            Map parseAsJSON = HttpUtils.parseAsJSON(a2);
            a(parseAsJSON);
            Map map = (Map) parseAsJSON.get("task_info");
            if (map == null) {
                Log.d("Pcs", "addDownload no data: " + parseAsJSON);
                throw new PcsFileSystemException(-1);
            }
            Object obj = map.get(aVar.f3160a);
            if (obj instanceof Map) {
                parseAsJSON = (Map) obj;
            }
            if (i == 0) {
                Object obj2 = parseAsJSON.get("save_path");
                String obj3 = obj2 != null ? obj2.toString() : null;
                if (obj3 != null) {
                    aVar.putExtra("name", ak.d(obj3));
                }
            } else if (i == 1) {
                aVar.d = aw.a(parseAsJSON.get("finished_size"), 0L);
                aVar.a(aw.a(parseAsJSON.get("file_size"), 0L));
                aVar.b(aw.a(parseAsJSON.get("finish_time"), 0L) * 1000);
            }
            aVar.putExtra("status", parseAsJSON.get("status"));
        } catch (Exception e) {
            throw new PcsFileSystemException(e);
        }
    }

    public boolean a(String str, String str2) {
        return d(str, str2) != null;
    }

    public boolean a(String str, String str2, String str3) {
        return exists(str, str2, str3, true);
    }

    public boolean a(String str, String str2, String str3, long j, String str4) {
        boolean z;
        try {
            String g = g(a(str4));
            String d = d(str, str2);
            if (d == null) {
                Log.e("Pcs", "can't get token for rename");
                z = false;
            } else {
                z = a(d, str3, j, g);
            }
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public boolean addServer(String str, String str2) {
        return a(str, str2);
    }

    public NetFileInfo b(String str, String str2, String str3) {
        return getFileInfo(str, str2, str3, false);
    }

    public Object b(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("ptpl", "esfb"));
        arrayList.add(new BasicNameValuePair(BasicStoreTools.DEVICE_ID, encryptDeviceId(str, "js52je)927!hsm^%3m")));
        arrayList.add(new BasicNameValuePair("device_token", str2));
        for (int i = 0; i < c.length; i++) {
            try {
                HttpPost httpPost = new HttpPost(c[i] + "/login");
                HttpClient a2 = a();
                httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "utf-8"));
                return HttpUtils.parseAsJSON(a2.execute(httpPost));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public Object c(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("ptpl", "esfb"));
        arrayList.add(new BasicNameValuePair(BasicStoreTools.DEVICE_ID, encryptDeviceId(str, "js52je)927!hsm^%3m")));
        arrayList.add(new BasicNameValuePair("device_info", f3159b));
        for (int i = 0; i < c.length; i++) {
            try {
                HttpPost httpPost = new HttpPost(c[i] + "/reg");
                HttpClient a2 = a();
                httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "utf-8"));
                return HttpUtils.parseAsJSON(a2.execute(httpPost));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public Object c(String str, String str2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("ptpl", "esfb"));
        arrayList.add(new BasicNameValuePair(BasicStoreTools.DEVICE_ID, encryptDeviceId(str, "js52je)927!hsm^%3m")));
        arrayList.add(new BasicNameValuePair("force_reg_token", str2));
        arrayList.add(new BasicNameValuePair("device_info", f3159b));
        for (int i = 0; i < c.length; i++) {
            try {
                HttpPost httpPost = new HttpPost(c[i] + "/forcereg");
                HttpClient a2 = a();
                httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "utf-8"));
                return HttpUtils.parseAsJSON(a2.execute(httpPost));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public Object c(String str, String str2, String str3) {
        if (this.h.size() == 0) {
            c();
        }
        String d = d(str, str2);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("ptpl", "esfb"));
        arrayList.add(new BasicNameValuePair(BDAccountManager.KEY_USERNAME, str3));
        arrayList.add(new BasicNameValuePair("bduss", h(d)));
        HttpPost httpPost = new HttpPost("https://openapi.baidu.com/yunid/user/bindingcaptcha");
        HttpClient a2 = a();
        try {
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "utf-8"));
            return HttpUtils.parseAsJSON(a2.execute(httpPost));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public boolean copyFile(String str, String str2, String str3, String str4) {
        boolean z = false;
        try {
            String a2 = a(str4);
            String g = g(a(str3));
            String g2 = g(a2);
            String d = d(str, str2);
            if (d == null) {
                Log.e("Pcs", "can't get token for rename");
            } else if (f(d, g, g2)) {
                z = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return z;
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public boolean createFile(String str, String str2, String str3, boolean z) {
        if (str3.equals("/")) {
            return true;
        }
        if (z) {
            String d = d(str, str2);
            if (d != null) {
                return g(d, g(a(str3))) != null;
            }
            Log.e("Pcs", "can't get token createfile");
            return false;
        }
        try {
            a(str, str2, str3, 0L).close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public String createShare(String str, String str2, String str3, HashMap<String, Object> hashMap) {
        String g = g(a(str3));
        String d = d(str, str2);
        if (d == null) {
            Log.e("Pcs", "can't get token createfile");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("method", "create"));
        arrayList.add(new BasicNameValuePair("type", "public"));
        if (g != null) {
            arrayList.add(new BasicNameValuePair("path", g));
        }
        if (d.startsWith("auth_code:")) {
            arrayList.add(new BasicNameValuePair("access_token", h(d)));
        } else if (d.startsWith("bduss:")) {
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
        }
        HttpPost httpPost = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/share?" + a(arrayList));
        if (d.startsWith("bduss:")) {
            httpPost.addHeader("Cookie", "BDUSS=" + h(d));
        }
        try {
            Map parseAsJSON = HttpUtils.parseAsJSON(a(httpPost));
            if (!a(parseAsJSON, "createshare")) {
                return null;
            }
            Object obj = parseAsJSON.get("list");
            if (obj instanceof JSONArray) {
                Iterator it = ((JSONArray) obj).iterator();
                if (it.hasNext()) {
                    return (String) it.next();
                }
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public Object d(String str) {
        String md5Encode = com.baidu.sapi2.Utils.md5Encode("action=reg&appid=1&sms=" + str + "&tpl=esfb&sign_key=3e504de3df373ce5e1080f3b9c33afba");
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("tpl", "esfb"));
        arrayList.add(new BasicNameValuePair("appid", "1"));
        arrayList.add(new BasicNameValuePair("sms", str));
        arrayList.add(new BasicNameValuePair("action", "reg"));
        arrayList.add(new BasicNameValuePair("sig", md5Encode));
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 2) {
                return null;
            }
            try {
                HttpPost httpPost = new HttpPost(p[i2]);
                HttpClient a2 = a();
                httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "utf-8"));
                return HttpUtils.parseAsJSON(a2.execute(httpPost));
            } catch (Exception e) {
                e.printStackTrace();
                i = i2 + 1;
            }
        }
    }

    public String d(String str, String str2, String str3) {
        if (this.h.size() == 0) {
            c();
        }
        String d = d(str, str2);
        ArrayList arrayList = new ArrayList();
        if (d.startsWith("auth_code:")) {
            arrayList.add(new BasicNameValuePair("access_token", h(d)));
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
        } else if (d.startsWith("bduss:")) {
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
            arrayList.add(new BasicNameValuePair("BDUSS", h(d)));
        }
        arrayList.add(new BasicNameValuePair("method", "cancel_task"));
        arrayList.add(new BasicNameValuePair("task_id", str3));
        HttpPost httpPost = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/services/cloud_dl?" + a(arrayList));
        if (d.startsWith("bduss:")) {
            httpPost.addHeader("Cookie", "BDUSS=" + h(d));
        }
        HttpResponse a2 = a(httpPost);
        new HashMap();
        try {
            Map parseAsJSON = HttpUtils.parseAsJSON(a2);
            a(parseAsJSON);
            Object obj = parseAsJSON.get("request_id");
            if (obj == null) {
                Log.d("Pcs", "addDownload no data: " + parseAsJSON);
                throw new PcsFileSystemException(-1);
            }
            Log.d("Pcs", "cancelDownloadTask:" + obj);
            return obj.toString();
        } catch (Exception e) {
            throw new PcsFileSystemException(e);
        }
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public void delServer(String str, String str2) {
        if (this.h.size() == 0) {
            c();
        }
        synchronized (this.f) {
            this.f.remove(str);
        }
        synchronized (this.h) {
            this.h.remove(str);
        }
        d();
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public boolean deleteFile(String str, String str2, String str3) {
        String d;
        int lastIndexOf;
        try {
            if (this.h.size() == 0) {
                c();
            }
            String g = g(str3);
            String d2 = d(str, str2);
            if (d2 != null) {
                return (!g.endsWith(".pcs") || (d = ak.d(g)) == null || (lastIndexOf = d.lastIndexOf(46)) <= 0) ? h(d2, a(g)) : aw.b((CharSequence) d(str, str2, d.substring(0, lastIndexOf)));
            }
            Log.e("Pcs", "delete, can't get the token");
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public boolean exists(String str, String str2, String str3, boolean z) {
        return str3.equals("/") || b(str, str2, str3) != null;
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public NetFileInfo getFileInfo(String str, String str2, String str3, boolean z) {
        NetFileInfo netFileInfo = new NetFileInfo();
        netFileInfo.path = str3;
        netFileInfo.name = j(str3);
        if (str3.equals("/") || str3.equals("/files") || str3.equals("/pictures") || str3.equals("/music") || str3.equals("/videos") || str3.equals("/documents") || str3.equals("/apps") || str3.equals("/others")) {
            netFileInfo.isDirectory = true;
            return netFileInfo;
        }
        if (this.h.size() == 0) {
            c();
        }
        String d = d(str, str2);
        if (d == null) {
            Log.e("Pcs", "getFileInfo, can't get the token");
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("method", "meta"));
        if (d.startsWith("auth_code:")) {
            arrayList.add(new BasicNameValuePair("access_token", h(d)));
        } else if (d.startsWith("bduss:")) {
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
        }
        if (str3 != null) {
            arrayList.add(new BasicNameValuePair("path", a(str3)));
        }
        HttpGet httpGet = new HttpGet("https://pcs.baidu.com/rest/2.0/pcs/file?" + a(arrayList));
        if (d.startsWith("bduss:")) {
            httpGet.addHeader("Cookie", "BDUSS=" + h(d));
        }
        if (httpGet != null) {
            try {
                HttpResponse execute = a().execute(httpGet);
                if (execute != null) {
                    Map parseAsJSON = HttpUtils.parseAsJSON(execute);
                    if (a(parseAsJSON, "meta") && parseAsJSON.containsKey("list")) {
                        JSONObject jSONObject = (JSONObject) ((JSONArray) parseAsJSON.get("list")).get(0);
                        netFileInfo.isDirectory = ((Long) jSONObject.get("isdir")).longValue() == 1;
                        netFileInfo.size = ((Long) jSONObject.get("size")).longValue();
                        netFileInfo.lastModifiedTime = ((Long) jSONObject.get("mtime")).longValue();
                        netFileInfo.lastModifiedTime *= 1000;
                        return netFileInfo;
                    }
                    return null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public InputStream getFileInputStream(String str, String str2, String str3, long j) {
        com.estrongs.android.util.a a2;
        if (this.h.size() == 0) {
            c();
        }
        try {
            String d = d(str, str2);
            InputStream a3 = a(d, a(str3), j);
            if (a3 == null) {
                return null;
            }
            if (i(d) != 1 || (a2 = com.estrongs.android.util.a.a()) == null) {
                return a3;
            }
            a2.b("PCS_Download_UV", "PCS_Download_UV");
            return a3;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public long getFileLength(String str, String str2, String str3) {
        NetFileInfo b2 = b(str, str2, str3);
        if (b2 == null) {
            return 0L;
        }
        return b2.size;
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public OutputStream getFileOutputStream(String str, String str2, String str3, long j, boolean z) {
        String str4;
        boolean z2;
        com.estrongs.android.util.a a2;
        if (this.h.size() == 0) {
            c();
        }
        try {
            String a3 = a(str3);
            boolean a4 = a(str, str2, str3);
            if (a4) {
                str4 = str3 + this.m.nextInt();
                z2 = renameFile(str, str2, str3, str4);
            } else {
                str4 = null;
                z2 = false;
            }
            String d = d(str, str2);
            if (d == null) {
                Log.e("Pcs", "getFileOutputStream, can't get the token");
                return null;
            }
            String m = m(d);
            if (m == null) {
                Log.e("Pcs", "getFileOutputStream, can't get upload url");
                return null;
            }
            String g = g(a3);
            UploadOutputStream uploadOutputStream = new UploadOutputStream();
            PipedInputStream pipedInputStream = new PipedInputStream();
            try {
                pipedInputStream.connect(uploadOutputStream);
                Thread dVar = new d(this, j, pipedInputStream, g, m, d, uploadOutputStream, a4, z2, str, str2, str4, str3);
                uploadOutputStream.setTask(dVar, pipedInputStream);
                dVar.start();
                if (j == 0) {
                    uploadOutputStream.write(32);
                }
                if (i(d) != 1 || (a2 = com.estrongs.android.util.a.a()) == null) {
                    return uploadOutputStream;
                }
                a2.b("PCS_Upload_UV", "PCS_Upload_UV");
                return uploadOutputStream;
            } catch (IOException e) {
                Log.e("Pcs", "Can't create pipe stream");
                return null;
            }
        } catch (Exception e2) {
            return null;
        }
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public String getLastErrorString(String str) {
        return this.n;
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public long getLeftSpaceSize(String str, String str2, String str3) {
        return 0L;
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public String getOAuthLoginUrl() {
        return "https://openapi.baidu.com" + HttpUtils.buildGetUrl("/oauth/2.0/authorize", new Object[]{"response_type", "code", "client_id", "4YchBAkgxfWug3KRYCGOv8EK", "redirect_uri", "http://www.estrongs.com", "display", "mobile", "scope", "basic netdisk"}, true);
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public boolean getRegisterPrepareInfo(Object[] objArr) {
        return false;
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public InputStream getThumbnail(String str, String str2, String str3) {
        InputStream a2;
        try {
            String d = d(str, str2);
            if (d == null) {
                Log.e("Pcs", "getThumbnail, can't get the token");
                a2 = null;
            } else {
                a2 = a(d, a(str3), 50, 64, 64);
            }
            return a2;
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public String getUserLoginName(String str) {
        String str2;
        String str3;
        String str4;
        String str5;
        String[] split = str.split(":");
        if (split == null || split.length != 2) {
            return null;
        }
        if (split[0].equals("thirdpart")) {
            try {
                split[1] = aw.d(split[1]);
                int indexOf = split[1].indexOf("<bduss>");
                int indexOf2 = split[1].indexOf("</bduss>");
                String substring = (indexOf == -1 || indexOf2 == -1) ? "" : split[1].substring(indexOf + "<bduss>".length(), indexOf2);
                int indexOf3 = split[1].indexOf("<phoenix_token>");
                int indexOf4 = split[1].indexOf("</phoenix_token>");
                String str6 = "";
                if (indexOf3 != -1 && indexOf4 != -1) {
                    str6 = split[1].substring(indexOf3 + "<phoenix_token>".length(), indexOf4);
                }
                String str7 = substring + "\n" + str6;
                int indexOf5 = split[1].indexOf("<bduid>");
                int indexOf6 = split[1].indexOf("</bduid>");
                String str8 = "";
                if (indexOf5 != -1 && indexOf6 != -1) {
                    str8 = split[1].substring(indexOf5 + "<bduid>".length(), indexOf6);
                }
                String str9 = str7 + "\n" + str8;
                int indexOf7 = split[1].indexOf("<display_name>");
                int indexOf8 = split[1].indexOf("</display_name>");
                String str10 = "";
                if (indexOf7 == -1 || indexOf8 == -1) {
                    str5 = null;
                } else {
                    str10 = split[1].substring(indexOf7 + "<display_name>".length(), indexOf8);
                    str5 = str10;
                }
                String str11 = str9 + "\n" + str10;
                int indexOf9 = split[1].indexOf("<os_type>");
                int indexOf10 = split[1].indexOf("</os_type>");
                String str12 = "";
                if (indexOf9 != -1 && indexOf10 != -1) {
                    str12 = split[1].substring(indexOf9 + "<os_type>".length(), indexOf10);
                }
                String str13 = str11 + "\n" + str12;
                split[0] = "bduss";
                str4 = str13;
                str3 = str5;
            } catch (Exception e) {
                e.printStackTrace();
                return null;
            }
        } else if (split[0].equals("quikreg")) {
            try {
                split[0] = "bduss";
                String d = aw.d(split[1]);
                str3 = d.split("\n")[3];
                str4 = d;
            } catch (Exception e2) {
                e2.printStackTrace();
                return null;
            }
        } else if (split[0].equals("login")) {
            try {
                split[0] = "bduss";
                String d2 = aw.d(split[1]);
                str3 = d2.split("\n")[1];
                str4 = d2;
            } catch (Exception e3) {
                e3.printStackTrace();
                return null;
            }
        } else {
            try {
                if (split[0].equals("auth_code")) {
                    split[1] = aw.d(split[1]);
                    Map parseAsJSON = HttpUtils.parseAsJSON(a().execute(new HttpGet("https://openapi.baidu.com" + HttpUtils.buildGetUrl("/oauth/2.0/token", new Object[]{"grant_type", "authorization_code", "code", split[1], "client_id", "4YchBAkgxfWug3KRYCGOv8EK", "client_secret", "BPZEkGy6js8a6M86Gw7q5E4yACTKVFqX", "redirect_uri", "http://www.estrongs.com"}))));
                    if (parseAsJSON == null) {
                        return null;
                    }
                    if (parseAsJSON.containsKey("error")) {
                        Log.e("Baidu", "get token failed:" + parseAsJSON.get("error_description"));
                        return null;
                    }
                    String str14 = (String) parseAsJSON.get("access_token");
                    if (str14 == null) {
                        Log.e("Baidu", "get null token");
                        return null;
                    }
                    str2 = str14;
                } else {
                    split[1] = aw.d(split[1]);
                    str2 = split[1];
                }
                Map parseAsJSON2 = HttpUtils.parseAsJSON(a().execute(new HttpGet("https://openapi.baidu.com" + HttpUtils.buildGetUrl("/rest/2.0/passport/users/getInfo", new Object[]{"access_token", str2, "format", "json", "fields", BDAccountManager.KEY_USERNAME}))));
                if (parseAsJSON2 == null) {
                    return null;
                }
                str3 = (String) parseAsJSON2.get(BDAccountManager.KEY_USERNAME);
                str4 = str2;
            } catch (Exception e4) {
                e4.printStackTrace();
                return null;
            }
        }
        if (str3 == null || str4 == null) {
            return str3;
        }
        synchronized (this.f) {
            this.f.put(str3, split[0] + ":" + aw.c(str4));
        }
        d();
        return str3;
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public boolean isDir(String str, String str2, String str3) {
        NetFileInfo b2 = b(str, str2, str3);
        if (b2 == null) {
            return false;
        }
        return b2.isDirectory;
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public boolean isPagingSupported() {
        return true;
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public Map<String, NetFileInfo> listFiles(String str, String str2, String str3, boolean z, INetRefreshCallback iNetRefreshCallback, HashMap<String, Object> hashMap) {
        return a(str, str2, str3, z, iNetRefreshCallback, hashMap, null);
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public boolean mkDirs(String str, String str2, String str3) {
        return createFile(str, str2, str3, true);
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public boolean moveFile(String str, String str2, String str3, String str4) {
        return renameFile(str, str2, str3, str4);
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public int register(String str, String str2, Object[] objArr) {
        return 100;
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public boolean removeShare(String str, String str2, String str3, HashMap<String, Object> hashMap) {
        String g = g(a(str3));
        String d = d(str, str2);
        if (d == null) {
            Log.e("Pcs", "can't get token createfile");
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("method", "cancel"));
        if (g != null) {
            arrayList.add(new BasicNameValuePair("path", g));
        }
        if (d.startsWith("auth_code:")) {
            arrayList.add(new BasicNameValuePair("access_token", h(d)));
        } else if (d.startsWith("bduss:")) {
            arrayList.add(new BasicNameValuePair("app_id", "266719"));
        }
        HttpPost httpPost = new HttpPost("https://pcs.baidu.com/rest/2.0/pcs/share?" + a(arrayList));
        if (d.startsWith("bduss:")) {
            httpPost.addHeader("Cookie", "BDUSS=" + h(d));
        }
        try {
            return a(HttpUtils.parseAsJSON(a(httpPost)), "cancelshare");
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public boolean renameFile(String str, String str2, String str3, String str4) {
        try {
            String d = d(str, str2);
            if (d == null) {
                Log.e("Pcs", "can't get token for rename");
                return false;
            }
            if (!str3.startsWith("/files")) {
                str4 = str3.substring(0, str3.lastIndexOf(">") + 1) + ak.d(str4);
            }
            return e(d, a(str3), a(str4));
        } catch (Exception e) {
            return false;
        }
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public void setConfigDir(String str, String str2) {
        this.j = str;
        this.k = str2;
    }

    @Override // com.estrongs.android.pop.netfs.INetFileSystem
    public void setPrivateContent(String str, String str2, Object obj) {
    }
}

package com.estrongs.android.pop.spfs.facebook;

import android.util.Log;
import com.baidu.sapi2.BDAccountManager;
import com.baidu.sapi2.callback.LoginCallBack;
import com.estrongs.android.pop.netfs.INetFileSystem;
import com.estrongs.android.pop.netfs.INetRefreshCallback;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.netfs.utils.HttpUtils;
import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.pop.spfs.AlbumException;
import com.estrongs.android.pop.spfs.ESURLUtil;
import com.estrongs.android.pop.spfs.ISPFileSystem;
import com.estrongs.android.pop.spfs.OAuthConstants;
import com.estrongs.android.pop.spfs.OAuthUtil;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.pop.spfs.facebook.FacebookFileSystemCache;
import com.estrongs.android.pop.spfs.flickr.FlickrFileSystem;
import com.estrongs.android.pop.spfs.note.IPhotoInfo;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.aw;
import com.estrongs.fs.a.a;
import com.gmail.yuyang226.flickr.b;
import com.gmail.yuyang226.flickr.c;
import com.gmail.yuyang226.flickr.d.d;
import java.io.BufferedOutputStream;
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
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.URL;
import java.net.URLEncoder;
import java.security.KeyStore;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import jcifs.https.Handler;
import jcifs.smb.SmbConstants;
import org.apache.commons.net.SocketClient;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.mime.MIME;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public class FacebookFileSystem implements ISPFileSystem, IPhotoInfo {
    private static final String CONFIG_FILE = "Facebook.cfg";
    private static final String CONFIG_SPLIT = "#####";
    private static final int HTTP_AUTH_FAIL = 401;
    private static final String client_id = "245740315545780";
    private static SimpleDateFormat dateFormater = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private final String TAG = "Facebook";
    private final int STAT_NET_TYPE_FACEBOOK = 51;
    private String apiUri = "https://graph.facebook.com/";
    private HashMap<String, User> access_tokens = new HashMap<>();
    private String storePath = null;
    private String private_storePath = null;
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
    private String lastErrorString = null;

    /* loaded from: classes.dex */
    public class MySSLSocketFactory extends SSLSocketFactory {
        SSLContext sslContext;

        public MySSLSocketFactory(KeyStore keyStore) {
            super(keyStore);
            this.sslContext = SSLContext.getInstance("TLS");
            this.sslContext.init(null, new TrustManager[]{new X509TrustManager() { // from class: com.estrongs.android.pop.spfs.facebook.FacebookFileSystem.MySSLSocketFactory.1
                @Override // javax.net.ssl.X509TrustManager
                public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
                }

                @Override // javax.net.ssl.X509TrustManager
                public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
                }

                @Override // javax.net.ssl.X509TrustManager
                public X509Certificate[] getAcceptedIssuers() {
                    return null;
                }
            }}, null);
        }

        @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.SocketFactory
        public Socket createSocket() {
            return this.sslContext.getSocketFactory().createSocket();
        }

        @Override // org.apache.http.conn.ssl.SSLSocketFactory, org.apache.http.conn.scheme.LayeredSocketFactory
        public Socket createSocket(Socket socket, String str, int i, boolean z) {
            return this.sslContext.getSocketFactory().createSocket(socket, str, i, z);
        }
    }

    /* loaded from: classes.dex */
    public class User {
        String id;
        String name;
        String token;

        public User(String str, String str2, String str3) {
            this.id = str;
            this.name = str2;
            this.token = str3;
        }
    }

    static {
        dateFormater.setTimeZone(TimeZone.getTimeZone("GMT-00:00"));
    }

    private String appendAcessParams(String str, String str2, int i, int i2) {
        return (!str.contains("?") ? str + "?" : str + "&") + "access_token=" + str2 + "&" + buildPagingParams(i, i2);
    }

    private String buildPagingParams(int i, int i2) {
        return String.format("limit=%s&offset=%s", Integer.valueOf(i < 1 ? 10 : i), Integer.valueOf(i2 < 1 ? 0 : (i2 - 1) * i));
    }

    public static String encodePostBody(TypedMap typedMap, String str) {
        if (typedMap == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : typedMap.keySet()) {
            Object obj = typedMap.get(str2);
            if (obj instanceof String) {
                sb.append("Content-Disposition: form-data; name=\"" + str2 + "\"\r\n\r\n" + ((String) obj));
                sb.append("\r\n--" + str + SocketClient.NETASCII_EOL);
            }
        }
        return sb.toString();
    }

    public static String encodeUrl(TypedMap typedMap) {
        if (typedMap == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : typedMap.keySet()) {
            if (typedMap.get(str) instanceof String) {
                if (z) {
                    z = false;
                } else {
                    sb.append("&");
                }
                sb.append(URLEncoder.encode(str) + "=" + URLEncoder.encode(typedMap.getString(str)));
            }
        }
        return sb.toString();
    }

    private JSONObject execute(HttpClient httpClient, HttpRequestBase httpRequestBase) {
        try {
            JSONObject parseAsJSON = parseAsJSON(httpClient.execute(httpRequestBase));
            detectErrorAndThrowException(parseAsJSON);
            return parseAsJSON;
        } catch (NetFsException e) {
            throw e;
        } catch (Exception e2) {
            throw new NetFsException(e2);
        }
    }

    private FacebookFileSystemCache.FacebookFileCacheEntry getCacheEntry(String str, String str2) {
        int serverId = getServerId(str);
        if (serverId == 0) {
            return null;
        }
        return FacebookFileSystemCache.instance().getFile(serverId, FacebookFileSystemCache.instance().getPathId(serverId, str2));
    }

    private FacebookFileSystemCache.FacebookFileCacheEntry getFileCacheEntry(JSONObject jSONObject, String str, boolean z) {
        try {
            FacebookFileSystemCache.FacebookFileCacheEntry facebookFileCacheEntry = new FacebookFileSystemCache.FacebookFileCacheEntry();
            if (facebookFileCacheEntry.isDir == 1) {
                facebookFileCacheEntry.size = 0;
            } else {
                facebookFileCacheEntry.size = -1;
            }
            facebookFileCacheEntry.url = jSONObject.optString("source");
            facebookFileCacheEntry.thumbnail_url = jSONObject.optString("picture");
            facebookFileCacheEntry.url_id = jSONObject.optString(Name.MARK);
            facebookFileCacheEntry.name = jSONObject.optString("name");
            if (!z) {
                facebookFileCacheEntry.path = str;
            } else if (facebookFileCacheEntry.isDir == 1) {
                facebookFileCacheEntry.path = str.endsWith("/") ? str + facebookFileCacheEntry.name : str + "/" + facebookFileCacheEntry.name;
            } else {
                facebookFileCacheEntry.path = str.endsWith("/") ? str + facebookFileCacheEntry.url_id : str + "/" + facebookFileCacheEntry.url_id;
            }
            facebookFileCacheEntry.mtime = ((int) System.currentTimeMillis()) / LoginCallBack.REQUEST_LOGINPROTECT;
            facebookFileCacheEntry.publicFlag = false;
            facebookFileCacheEntry.friendFlag = false;
            facebookFileCacheEntry.familyFlag = false;
            facebookFileCacheEntry.description = jSONObject.optString("description");
            facebookFileCacheEntry.mtime = ((int) parseDate(jSONObject.optString("created_time")).getTime()) / LoginCallBack.REQUEST_LOGINPROTECT;
            JSONObject optJSONObject = jSONObject.optJSONObject(TypedMap.KEY_FROM);
            if (optJSONObject == null) {
                return facebookFileCacheEntry;
            }
            facebookFileCacheEntry.ownerId = optJSONObject.optString(Name.MARK);
            facebookFileCacheEntry.ownerUsername = optJSONObject.optString("name");
            return facebookFileCacheEntry;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    private String getParentPath(String str) {
        if (str.equals("/")) {
            return null;
        }
        if (str.endsWith("/")) {
            str = str.substring(0, str.length() - 1);
        }
        int lastIndexOf = str.lastIndexOf(47);
        if (lastIndexOf >= 0) {
            return str.substring(0, lastIndexOf + 1);
        }
        return null;
    }

    private JSONObject getPhotosByAlbum(String str, String str2, int i, int i2) {
        String token = getToken(str, null);
        if (token == null) {
            Log.e("Facebook", "can't get the token");
            return null;
        }
        return parseAsJSON(getNewHttpClient().execute(new HttpGet(appendAcessParams(this.apiUri + str2 + "/photos", token, i, i2))));
    }

    private JSONObject getPhotosByMe(String str, int i, int i2) {
        String token = getToken(str, null);
        if (token == null) {
            Log.e("Facebook", "can't get the token");
            return null;
        }
        return parseAsJSON(getNewHttpClient().execute(new HttpGet(appendAcessParams(this.apiUri + "me/photos", token, i, i2))));
    }

    private JSONObject getPhotosets(String str, int i, int i2) {
        String token = getToken(str, null);
        if (token == null) {
            Log.e("Facebook", "can't get the token");
            return null;
        }
        User user = this.access_tokens.get(str);
        if (user == null) {
            return null;
        }
        return parseAsJSON(getNewHttpClient().execute(new HttpGet(appendAcessParams(this.apiUri + user.id + "/albums", token, i, i2))));
    }

    private int getServerId(String str) {
        String str2 = str + "@Facebook";
        int serverId = FacebookFileSystemCache.instance().getServerId(str2);
        if (serverId != 0) {
            return serverId;
        }
        FacebookFileSystemCache.instance().addServer(str2);
        return FacebookFileSystemCache.instance().getServerId(str2);
    }

    private String getToken(String str, String str2) {
        String str3;
        synchronized (this.access_tokens) {
            str3 = this.access_tokens.get(str).token;
        }
        return str3;
    }

    private boolean loadTokens() {
        HashMap<String, User> hashMap = new HashMap<>();
        try {
            File file = new File(this.private_storePath + "/" + CONFIG_FILE);
            if (file.exists()) {
                DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(dataInputStream));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    String[] split = readLine.split(CONFIG_SPLIT);
                    if (split.length == 3) {
                        hashMap.put(split[1], new User(split[0], split[1], split[2]));
                    }
                }
                dataInputStream.close();
            }
            synchronized (this.access_tokens) {
                this.access_tokens = hashMap;
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static OutputStream openHttpOutputStream(String str, String str2, TypedMap typedMap) {
        if (str2.equals("GET")) {
            str = str + "?" + encodeUrl(typedMap);
        }
        final HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestProperty("User-Agent", System.getProperties().getProperty("http.agent") + " FacebookAndroidSDK");
        if (httpURLConnection instanceof HttpsURLConnection) {
            trustAllServer((HttpsURLConnection) httpURLConnection);
        }
        if ("GET".equalsIgnoreCase(str2)) {
            return null;
        }
        if (!typedMap.containsKey("method")) {
            typedMap.put("method", str2);
        }
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty(MIME.CONTENT_TYPE, "multipart/form-data;boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
        httpURLConnection.connect();
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream()) { // from class: com.estrongs.android.pop.spfs.facebook.FacebookFileSystem.1
            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                String read;
                write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
                super.close();
                try {
                    read = FacebookFileSystem.read(httpURLConnection.getInputStream());
                } catch (FileNotFoundException e) {
                    read = FacebookFileSystem.read(httpURLConnection.getErrorStream());
                }
                try {
                    if (aw.a((CharSequence) new JSONObject(read).getString(Name.MARK))) {
                        throw new IOException("Failed to upload");
                    }
                } catch (JSONException e2) {
                    throw new IOException("Failed to upload");
                }
            }
        };
        bufferedOutputStream.write("--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
        bufferedOutputStream.write(encodePostBody(typedMap, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").getBytes());
        bufferedOutputStream.write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
        bufferedOutputStream.write("Content-Disposition: form-data; filename=\"Name-upload-test\"\r\n".getBytes());
        bufferedOutputStream.write("Content-Type: content/unknown\r\n\r\n".getBytes());
        return bufferedOutputStream;
    }

    private void parseAlbums(String str, JSONObject jSONObject, HashMap<String, FacebookFileSystemCache.FacebookFileCacheEntry> hashMap) {
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("data");
            int i = 0;
            while (optJSONArray != null) {
                if (i >= optJSONArray.length()) {
                    return;
                }
                JSONObject jSONObject2 = optJSONArray.getJSONObject(i);
                if (jSONObject2 != null) {
                    FacebookFileSystemCache.FacebookFileCacheEntry facebookFileCacheEntry = new FacebookFileSystemCache.FacebookFileCacheEntry();
                    facebookFileCacheEntry.isDir = 1;
                    facebookFileCacheEntry.url_id = jSONObject2.optString(Name.MARK);
                    facebookFileCacheEntry.path = str.endsWith("/") ? str + facebookFileCacheEntry.url_id : str + "/" + facebookFileCacheEntry.url_id;
                    JSONObject optJSONObject = jSONObject2.optJSONObject(TypedMap.KEY_FROM);
                    if (optJSONObject != null) {
                        facebookFileCacheEntry.ownerId = optJSONObject.optString(Name.MARK);
                        facebookFileCacheEntry.ownerUsername = optJSONObject.optString("name");
                    }
                    facebookFileCacheEntry.name = jSONObject2.optString("name");
                    facebookFileCacheEntry.description = jSONObject2.optString("description");
                    facebookFileCacheEntry.thumbnail_url = String.format(this.apiUri + "%s/picture", facebookFileCacheEntry.url_id);
                    facebookFileCacheEntry.mtime = ((int) parseDate(jSONObject2.optString("created_time")).getTime()) / LoginCallBack.REQUEST_LOGINPROTECT;
                    hashMap.put(facebookFileCacheEntry.path, facebookFileCacheEntry);
                }
                i++;
            }
        } catch (JSONException e) {
            throw new NetFsException(e);
        }
    }

    private Date parseDate(String str) {
        return aw.a(str.replaceAll("T", " "), (DateFormat) dateFormater);
    }

    private void parsePhotos(String str, JSONObject jSONObject, HashMap<String, FacebookFileSystemCache.FacebookFileCacheEntry> hashMap) {
        JSONArray optJSONArray;
        try {
            JSONArray optJSONArray2 = jSONObject.optJSONArray("data");
            if (optJSONArray2 == null || optJSONArray2.length() <= 0) {
                return;
            }
            for (int i = 0; i < optJSONArray2.length(); i++) {
                FacebookFileSystemCache.FacebookFileCacheEntry facebookFileCacheEntry = new FacebookFileSystemCache.FacebookFileCacheEntry();
                JSONObject jSONObject2 = optJSONArray2.getJSONObject(i);
                facebookFileCacheEntry.mtime = (int) (parseDate(jSONObject2.optString("created_time")).getTime() / 1000);
                facebookFileCacheEntry.url = jSONObject2.optString("source");
                facebookFileCacheEntry.name = jSONObject2.optString("name");
                facebookFileCacheEntry.thumbnail_url = jSONObject2.optString("picture");
                facebookFileCacheEntry.url_id = jSONObject2.optString(Name.MARK);
                facebookFileCacheEntry.description = jSONObject2.optString("description");
                JSONObject optJSONObject = jSONObject2.optJSONObject(TypedMap.KEY_FROM);
                if (optJSONObject != null) {
                    facebookFileCacheEntry.ownerId = optJSONObject.optString(Name.MARK);
                    facebookFileCacheEntry.ownerUsername = optJSONObject.optString("name");
                }
                String str2 = "";
                JSONObject optJSONObject2 = jSONObject2.optJSONObject("tags");
                if (optJSONObject2 != null && (optJSONArray = optJSONObject2.optJSONArray("data")) != null) {
                    int length = optJSONArray.length();
                    int i2 = 0;
                    while (i2 < length) {
                        String str3 = str2 + optJSONArray.optJSONObject(i2).optString("name") + ",";
                        i2++;
                        str2 = str3;
                    }
                }
                if (str2.endsWith(",")) {
                    str2 = str2.substring(0, str2.length() - 1);
                }
                facebookFileCacheEntry.tags = str2;
                if (facebookFileCacheEntry.isDir == 1) {
                    facebookFileCacheEntry.path = str.endsWith("/") ? str + facebookFileCacheEntry.name : str + "/" + facebookFileCacheEntry.name;
                } else {
                    facebookFileCacheEntry.path = str.endsWith("/") ? str + facebookFileCacheEntry.url_id : str + "/" + facebookFileCacheEntry.url_id;
                }
                hashMap.put(facebookFileCacheEntry.path, facebookFileCacheEntry);
            }
        } catch (JSONException e) {
            throw new NetFsException(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String read(InputStream inputStream) {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), LoginCallBack.REQUEST_LOGINPROTECT);
        for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
            sb.append(readLine);
        }
        inputStream.close();
        return sb.toString();
    }

    private boolean saveTokens() {
        boolean z;
        synchronized (this.access_tokens) {
            File file = new File(this.private_storePath + "/" + CONFIG_FILE);
            file.delete();
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
                Iterator<Map.Entry<String, User>> it = this.access_tokens.entrySet().iterator();
                while (it.hasNext()) {
                    User value = it.next().getValue();
                    bufferedWriter.write(value.id + CONFIG_SPLIT + value.name + CONFIG_SPLIT + value.token + SocketClient.NETASCII_EOL);
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

    public static void trustAllServer(HttpsURLConnection httpsURLConnection) {
        TrustManager[] trustManagerArr = {new X509TrustManager() { // from class: com.estrongs.android.pop.spfs.facebook.FacebookFileSystem.2
            @Override // javax.net.ssl.X509TrustManager
            public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
            }

            @Override // javax.net.ssl.X509TrustManager
            public X509Certificate[] getAcceptedIssuers() {
                return new X509Certificate[0];
            }
        }};
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, trustManagerArr, new SecureRandom());
            httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public String addComment(String str, String str2, String str3, String str4) {
        try {
            if (getCacheEntry(str, str3) == null) {
                Log.e("Facebook", "can't get cache entry for delete");
                return null;
            }
            String token = getToken(str, str2);
            if (token == null) {
                Log.e("Facebook", "delete, can't get the token");
                return null;
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.apiUri + a.b(str3) + "/comments?access_token=" + token).openConnection();
            if (httpURLConnection instanceof HttpsURLConnection) {
                trustAllServer((HttpsURLConnection) httpURLConnection);
            }
            httpURLConnection.setRequestProperty("User-Agent", System.getProperties().getProperty("http.agent") + " FacebookAndroidSDK");
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setRequestProperty("Connection", "Keep-Alive");
            httpURLConnection.connect();
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
            bufferedOutputStream.write(((URLEncoder.encode("message", "UTF-8") + "=" + URLEncoder.encode(str4, "UTF-8")) + "&" + URLEncoder.encode("format", "UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")).getBytes());
            bufferedOutputStream.flush();
            bufferedOutputStream.close();
            InputStream inputStream = httpURLConnection.getInputStream();
            StringBuilder sb = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream), LoginCallBack.REQUEST_LOGINPROTECT);
            for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                sb.append(readLine);
            }
            inputStream.close();
            JSONObject jSONObject = new JSONObject(sb.toString());
            return (jSONObject == null || jSONObject.optString(Name.MARK) == null) ? sb.toString() : jSONObject.optString(Name.MARK);
        } catch (Exception e) {
            e.printStackTrace();
            throw new PhotoInfoException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public com.gmail.yuyang226.flickr.a.a addNote(String str, String str2, String str3, com.gmail.yuyang226.flickr.a.a aVar) {
        return null;
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void addPhoto(String str, String str2, String str3, String str4) {
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean addServer(String str, String str2) {
        if (!authenticate(str, str2)) {
            return false;
        }
        FacebookFileSystemCache.instance().addServer(str + "@Facebook");
        return true;
    }

    public boolean authenticate(String str, String str2) {
        return getToken(str, str2) != null;
    }

    public void close() {
    }

    public FacebookFileSystemCache.FacebookFileCacheEntry convertToCacheEntry(SPFileInfo sPFileInfo) {
        FacebookFileSystemCache.FacebookFileCacheEntry facebookFileCacheEntry = new FacebookFileSystemCache.FacebookFileCacheEntry();
        facebookFileCacheEntry.path = sPFileInfo.path;
        facebookFileCacheEntry.mtime = (int) (sPFileInfo.lastModifiedTime / 1000);
        facebookFileCacheEntry.isDir = sPFileInfo.isDirectory ? 1 : 0;
        facebookFileCacheEntry.size = (int) sPFileInfo.size;
        if (facebookFileCacheEntry.path == null || facebookFileCacheEntry.path.length() == 0) {
            facebookFileCacheEntry.path = "/";
        }
        return facebookFileCacheEntry;
    }

    public SPFileInfo convertToFileInfo(FacebookFileSystemCache.FacebookFileCacheEntry facebookFileCacheEntry) {
        if (facebookFileCacheEntry == null) {
            return null;
        }
        SPFileInfo sPFileInfo = new SPFileInfo();
        sPFileInfo.path = facebookFileCacheEntry.path;
        sPFileInfo.name = facebookFileCacheEntry.name;
        sPFileInfo.lastModifiedTime = facebookFileCacheEntry.mtime;
        sPFileInfo.lastModifiedTime *= 1000;
        sPFileInfo.readable = true;
        sPFileInfo.writable = true;
        sPFileInfo.hidden = sPFileInfo.name.startsWith(".");
        sPFileInfo.isDirectory = facebookFileCacheEntry.isDir == 1;
        sPFileInfo.size = facebookFileCacheEntry.size;
        sPFileInfo.folder_type = 0;
        sPFileInfo.publicFlag = facebookFileCacheEntry.publicFlag;
        sPFileInfo.friendFlag = facebookFileCacheEntry.friendFlag;
        sPFileInfo.familyFlag = facebookFileCacheEntry.familyFlag;
        sPFileInfo.notes = facebookFileCacheEntry.notes;
        sPFileInfo.description = facebookFileCacheEntry.description;
        sPFileInfo.ownerId = facebookFileCacheEntry.ownerId;
        sPFileInfo.ownerUsername = facebookFileCacheEntry.ownerUsername;
        sPFileInfo.thumbnail_url = facebookFileCacheEntry.thumbnail_url;
        return sPFileInfo;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean copyFile(String str, String str2, String str3, String str4) {
        throw new NetFsException(new UnsupportedOperationException("Facebook does not support copy ation now."));
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public Album createAlbum(String str, String str2, String str3, String str4) {
        String token = getToken(str, null);
        if (token == null) {
            Log.e("Facebook", "createAlbum, can't get the token");
            return null;
        }
        User user = this.access_tokens.get(str);
        if (user == null) {
            Log.e("Facebook", "createAlbum, can't get the user");
            return null;
        }
        HttpPost httpPost = new HttpPost(String.format(this.apiUri + "%s/albums?access_token=%s", user.id, token));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new BasicNameValuePair("name", str2));
        arrayList.add(new BasicNameValuePair("message", str2));
        try {
            httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "utf-8"));
            return new Album(execute(getNewHttpClient(), httpPost).optString(Name.MARK), str2, null, null);
        } catch (Exception e) {
            throw new AlbumException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean createFile(String str, String str2, String str3, boolean z) {
        return false;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public void delServer(String str, String str2) {
        if (this.access_tokens.size() == 0) {
            loadTokens();
        }
        synchronized (this.access_tokens) {
            this.access_tokens.remove(str);
        }
        FacebookFileSystemCache.instance().delServer(str + "@Facebook");
        saveTokens();
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void deleteComment(String str, String str2, String str3, String str4) {
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean deleteFile(String str, String str2, String str3) {
        boolean z = false;
        try {
            FacebookFileSystemCache.FacebookFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null) {
                Log.e("Facebook", "can't get cache entry for delete");
            } else {
                String token = getToken(str, str2);
                if (token == null) {
                    Log.e("Facebook", "delete, can't get the token");
                } else {
                    execute(getNewHttpClient(), new HttpPost(String.format(this.apiUri + "%s?method=delete&access_token=%s", cacheEntry.url_id, token)));
                    FacebookFileSystemCache.instance().deleteFile(cacheEntry.serverId, str3);
                    z = true;
                }
            }
        } catch (Exception e) {
            new NetFsException(e);
        }
        return z;
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void deleteNote(String str, String str2, String str3) {
    }

    protected void detectErrorAndThrowException(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject != null && (optJSONObject = jSONObject.optJSONObject("error")) != null) {
            throw new NetFsException(optJSONObject.optString("message"), NetFsException.ERROR_CODE.NETFS_ERROR_AUTH_FAILED);
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void editComment(String str, String str2, String str3, String str4) {
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void editNote(String str, String str2, com.gmail.yuyang226.flickr.a.a aVar) {
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean exists(String str, String str2, String str3) {
        return str3.equals("/") || getCacheEntry(str, str3) != null;
    }

    public c get(URL url, List<com.gmail.yuyang226.flickr.a> list) {
        list.add(new com.gmail.yuyang226.flickr.a("nojsoncallback", "1"));
        list.add(new com.gmail.yuyang226.flickr.a("format", "json"));
        return new b(OAuthUtil.getLine(url, list));
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public List<com.gmail.yuyang226.flickr.a> getAccessTokenParameters(String str, String str2, String str3) {
        return null;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public URL getAccessTokenUrl() {
        try {
            return d.a(FlickrFileSystem.DEFAULT_HOST, 80, "/services/oauth/access_token");
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public List<Album> getAlbums(String str, String str2, String str3) {
        return getAllAlbums(str, str2);
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public List<Album> getAllAlbums(String str, String str2) {
        LinkedList linkedList = new LinkedList();
        try {
            JSONObject photosets = getPhotosets(str, LoginCallBack.REQUEST_LOGINPROTECT, 0);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            parseAlbums("", photosets, linkedHashMap);
            for (FacebookFileSystemCache.FacebookFileCacheEntry facebookFileCacheEntry : linkedHashMap.values()) {
                linkedList.add(new Album(facebookFileCacheEntry.url_id, facebookFileCacheEntry.name, facebookFileCacheEntry.description, this.apiUri + facebookFileCacheEntry.url_id));
            }
        } catch (Exception e) {
            new AlbumException(e);
        }
        return linkedList;
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public String getBuddyIcon(String str, String str2) {
        String str3 = this.apiUri + "%s/picture";
        if (getToken(str, null) != null) {
            return String.format(str3, str2);
        }
        Log.e("Facebook", "can't get the token");
        return null;
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public List<com.gmail.yuyang226.flickr.a.a.a> getComments(String str, String str2, String str3, TypedMap typedMap) {
        try {
            String token = getToken(str, str2);
            if (token == null) {
                Log.e("Facebook", "delete, can't get the token");
                return null;
            }
            JSONObject parseAsJSON = parseAsJSON(getNewHttpClient().execute(new HttpGet(String.format("https://graph.facebook.com/%s/comments?limit=%s&offset=%s&access_token=%s", a.b(str3), Integer.valueOf(typedMap.getInt(INetFileSystem.LIST_LIMIT, 10L)), Integer.valueOf(typedMap.getInt(INetFileSystem.LIST_OFFSET, 0L)), token))));
            ArrayList arrayList = new ArrayList();
            JSONArray optJSONArray = parseAsJSON.optJSONArray("data");
            for (int i = 0; optJSONArray != null && i < optJSONArray.length(); i++) {
                com.gmail.yuyang226.flickr.a.a.a aVar = new com.gmail.yuyang226.flickr.a.a.a();
                JSONObject jSONObject = optJSONArray.getJSONObject(i);
                aVar.c(jSONObject.getString(Name.MARK));
                JSONObject optJSONObject = jSONObject.optJSONObject(TypedMap.KEY_FROM);
                if (optJSONObject != null) {
                    aVar.a(optJSONObject.getString(Name.MARK));
                    aVar.b(optJSONObject.getString("name"));
                }
                aVar.a(parseDate(jSONObject.optString("created_time")));
                aVar.e(jSONObject.getString("message"));
                arrayList.add(aVar);
            }
            JSONObject optJSONObject2 = parseAsJSON.optJSONObject("paging");
            if (optJSONObject2 == null) {
                return arrayList;
            }
            optJSONObject2.optString("next");
            return arrayList;
        } catch (Exception e) {
            throw new PhotoInfoException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public SPFileInfo getFileInfo(String str, String str2, String str3) {
        if (str3.equals("/")) {
            return null;
        }
        try {
            FacebookFileSystemCache.FacebookFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null) {
                return null;
            }
            SPFileInfo convertToFileInfo = convertToFileInfo(cacheEntry);
            if (convertToFileInfo.size == -1) {
                try {
                    convertToFileInfo.size = ESURLUtil.getLength(cacheEntry.url);
                } catch (MalformedURLException e) {
                    e.printStackTrace();
                    new NetFsException(e);
                } catch (IOException e2) {
                    e2.printStackTrace();
                    new NetFsException(e2);
                }
            }
            return convertToFileInfo;
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public InputStream getFileInputStream(String str, String str2, String str3, long j) {
        try {
            FacebookFileSystemCache.FacebookFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null) {
                Log.e("Facebook", "can't get cache entry for InputStream");
                return null;
            }
            String str4 = cacheEntry.url;
            if (cacheEntry.isDir == 1) {
                str4 = cacheEntry.thumbnail_url;
                if (aw.a((CharSequence) str4)) {
                    str4 = this.apiUri + cacheEntry.url_id + "/picture";
                }
            }
            if (aw.a((CharSequence) str4)) {
                return null;
            }
            HttpGet httpGet = new HttpGet(str4 + "?access_token=" + getToken(str, str2));
            if (j != 0) {
                httpGet.addHeader("Range", "bytes=" + j + "-");
            }
            HttpResponse execute = getNewHttpClient().execute(httpGet);
            if (execute.getStatusLine().getStatusCode() != 200 && execute.getStatusLine().getStatusCode() != 203) {
                Log.e("Facebook", "getInputStream ret:" + execute.getStatusLine().getStatusCode());
                return null;
            }
            HttpEntity entity = execute.getEntity();
            if (entity != null) {
                return entity.getContent();
            }
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public long getFileLength(String str, String str2, String str3) {
        SPFileInfo fileInfo = getFileInfo(str, str2, str3);
        if (fileInfo == null) {
            return 0L;
        }
        return fileInfo.size;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public OutputStream getFileOutputStream(String str, String str2, String str3, long j, TypedMap typedMap) {
        try {
            typedMap.put("message", typedMap.get("title"));
            String token = getToken(str, null);
            String string = typedMap.getString(ISPFileSystem.PARAMETER_ALBUMS_SELECTED);
            String str4 = "me";
            if (aw.a((CharSequence) string)) {
                String string2 = typedMap.getString(ISPFileSystem.PARAMETER_ALBUM_NEW);
                if (!aw.a((CharSequence) string2)) {
                    Album createAlbum = createAlbum(str, string2, string2, null);
                    if (!aw.a((CharSequence) createAlbum.id)) {
                        str4 = createAlbum.id;
                        typedMap.put(ISPFileSystem.PARAMETER_ALBUMS_SELECTED, this.apiUri + str4);
                    }
                }
            } else {
                str4 = a.b(string);
            }
            String str5 = this.apiUri + str4 + "/photos?access_token=" + token;
            typedMap.put(Name.LENGTH, Long.valueOf(j));
            return openHttpOutputStream(str5, "POST", typedMap);
        } catch (Exception e) {
            throw new NetFsException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public String getLastErrorString(String str) {
        return this.lastErrorString;
    }

    public HttpClient getNewHttpClient() {
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            MySSLSocketFactory mySSLSocketFactory = new MySSLSocketFactory(keyStore);
            mySSLSocketFactory.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme("https", mySSLSocketFactory, Handler.DEFAULT_HTTPS_PORT));
            ThreadSafeClientConnManager threadSafeClientConnManager = new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry);
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, SmbConstants.DEFAULT_RESPONSE_TIMEOUT);
            HttpConnectionParams.setSoTimeout(basicHttpParams, SmbConstants.DEFAULT_RESPONSE_TIMEOUT);
            return new DefaultHttpClient(threadSafeClientConnManager, basicHttpParams);
        } catch (Exception e) {
            return new DefaultHttpClient();
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public String getOAuthLoginUrl(String str) {
        return "https://m.facebook.com/dialog/oauth?display=touch&client_id=245740315545780&scope=offline_access%2Cpublish_stream%2Cuser_photos%2Cpublish_checkins%2Cphoto_upload&type=user_agent&redirect_uri=fbconnect%3A%2F%2Fsuccess";
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public String getOAuthVersion() {
        return OAuthConstants.VERSION_2;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public String getPhotoExtension(String str, String str2, String str3) {
        try {
            FacebookFileSystemCache.FacebookFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry != null && cacheEntry.isDir == 0 && cacheEntry.url != null) {
                return cacheEntry.url.substring(cacheEntry.url.lastIndexOf(46));
            }
            Log.e("Facebook", "can't get cache entry for get photo extension");
            return null;
        } catch (Exception e) {
            throw new PhotoInfoException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public SPFileInfo getPhotoInfo(String str, String str2, String str3) {
        try {
            String token = getToken(str, str2);
            if (token != null) {
                return convertToFileInfo(getFileCacheEntry(parseAsJSON(getNewHttpClient().execute(new HttpGet(String.format("https://graph.facebook.com/%s?access_token=%s", a.b(str3), token)))), str3, true));
            }
            Log.e("Facebook", "delete, can't get the token");
            return null;
        } catch (Exception e) {
            throw new PhotoInfoException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean getRegisterPrepareInfo(Object[] objArr) {
        return false;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public URL getRequestTokenUrl() {
        try {
            return new URL(getOAuthLoginUrl(null));
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public InputStream getThumbnail(String str, String str2, String str3) {
        InputStream inputStream = null;
        try {
            FacebookFileSystemCache.FacebookFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null || cacheEntry.isDir != 0 || cacheEntry.url == null) {
                Log.e("Facebook", "can't get cache entry for InputStream");
            } else if (cacheEntry.thumbnail_url != null) {
                HttpGet httpGet = new HttpGet(cacheEntry.thumbnail_url);
                HttpClient newHttpClient = getNewHttpClient();
                if (getToken(str, str2) == null) {
                    Log.e("Facebook", "can't get token download");
                } else {
                    HttpResponse execute = newHttpClient.execute(httpGet);
                    if (execute.getStatusLine().getStatusCode() == 200 || execute.getStatusLine().getStatusCode() == 203) {
                        HttpEntity entity = execute.getEntity();
                        if (entity != null) {
                            inputStream = entity.getContent();
                        }
                    } else {
                        Log.e("Facebook", "getInputStream ret:" + execute.getStatusLine().getStatusCode());
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return inputStream;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public String getUserLoginName(String str) {
        try {
            JSONObject parseAsJSON = parseAsJSON(getNewHttpClient().execute(new HttpGet(String.format(this.apiUri + "me?access_token=%s", str))));
            String optString = parseAsJSON.optString(BDAccountManager.KEY_USERNAME);
            saveUserAndToken(parseAsJSON.optString(Name.MARK), optString, str, "");
            return optString;
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean isDir(String str, String str2, String str3) {
        FacebookFileSystemCache.FacebookFileCacheEntry cacheEntry = getCacheEntry(str, str3);
        if (cacheEntry == null) {
            return false;
        }
        return cacheEntry.isDir == 1;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public Map<String, SPFileInfo> listFiles(String str, String str2, String str3, boolean z, INetRefreshCallback iNetRefreshCallback, TypedMap typedMap) {
        if (str3 == null) {
            return null;
        }
        FacebookFileSystemCache.FacebookFileCacheEntry cacheEntry = getCacheEntry(str, str3);
        if (!z && cacheEntry != null) {
            try {
                if (cacheEntry.isDir != 0 && cacheEntry.checktime != 0) {
                    return null;
                }
            } catch (NetFsException e) {
                throw e;
            } catch (Exception e2) {
                throw new NetFsException(e2);
            }
        }
        HashMap<String, FacebookFileSystemCache.FacebookFileCacheEntry> listFilesInternal = listFilesInternal(str, str2, str3, typedMap);
        if (listFilesInternal == null) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str4 : listFilesInternal.keySet()) {
            SPFileInfo convertToFileInfo = convertToFileInfo(listFilesInternal.get(str4));
            if (convertToFileInfo != null) {
                linkedHashMap.put(str4, convertToFileInfo);
            }
        }
        return linkedHashMap;
    }

    public HashMap<String, FacebookFileSystemCache.FacebookFileCacheEntry> listFilesInternal(String str, String str2, String str3, TypedMap typedMap) {
        JSONObject photosByMe;
        boolean z;
        FacebookFileSystemCache.FacebookFileCacheEntry facebookFileCacheEntry;
        loadTokens();
        int serverId = getServerId(str);
        FacebookFileSystemCache.FacebookFileCacheEntry cacheEntry = getCacheEntry(str, str3);
        try {
            int i = typedMap.getInt("per_page", 10L);
            int i2 = typedMap.getInt("page", 1L);
            if ("mine".equals(typedMap.getString("content_type")) || (a.c(str3).size() >= 2 && "mine".equals(a.c(str3).get(1)))) {
                photosByMe = getPhotosByMe(str, i, i2);
                z = false;
            } else if (!"album".equals(typedMap.getString("content_type")) && (a.c(str3).size() < 2 || !"album".equals(a.c(str3).get(1)))) {
                photosByMe = null;
                z = true;
            } else if (a.c(str3).size() == 2) {
                photosByMe = getPhotosets(str, i, i2);
                z = true;
            } else {
                photosByMe = getPhotosByAlbum(str, a.c(str3).get(2), i, i2);
                z = false;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (z) {
                parseAlbums(str3, photosByMe, linkedHashMap);
            } else {
                parsePhotos(str3, photosByMe, linkedHashMap);
            }
            if (cacheEntry == null) {
                FacebookFileSystemCache.FacebookFileCacheEntry facebookFileCacheEntry2 = new FacebookFileSystemCache.FacebookFileCacheEntry();
                facebookFileCacheEntry2.serverId = serverId;
                facebookFileCacheEntry2.path = str3;
                facebookFileCacheEntry2.isDir = 1;
                if ("/".equals(str3)) {
                    facebookFileCacheEntry2.parentId = 0;
                } else {
                    facebookFileCacheEntry2.parentId = FacebookFileSystemCache.instance().getPathId(serverId, getParentPath(str3));
                }
                FacebookFileSystemCache.instance().addFile(facebookFileCacheEntry2);
                facebookFileCacheEntry = FacebookFileSystemCache.instance().getFile(serverId, str3);
            } else {
                facebookFileCacheEntry = cacheEntry;
            }
            FacebookFileSystemCache.instance().updateFiles(serverId, facebookFileCacheEntry.id, linkedHashMap, i2 > 1);
            return linkedHashMap;
        } catch (NetFsException e) {
            throw e;
        } catch (Exception e2) {
            throw new NetFsException(e2);
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean mkDirs(String str, String str2, String str3) {
        return createFile(str, str2, str3, true);
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean moveFile(String str, String str2, String str3, String str4) {
        throw new NetFsException(new UnsupportedOperationException("Facebook does not support move ation now."));
    }

    public JSONObject parseAsJSON(HttpResponse httpResponse) {
        String str;
        JSONException jSONException;
        JSONObject jSONObject;
        String readResponse;
        try {
            try {
                readResponse = HttpUtils.readResponse(httpResponse);
            } catch (IOException e) {
                throw new NetFsException(e);
            }
        } catch (JSONException e2) {
            str = null;
            jSONException = e2;
        }
        if (readResponse != null) {
            try {
            } catch (JSONException e3) {
                str = readResponse;
                jSONException = e3;
                jSONObject = new JSONObject();
                if (!"true".equalsIgnoreCase(str)) {
                    throw new NetFsException(jSONException);
                }
                try {
                    jSONObject.put("result", "true");
                } catch (JSONException e4) {
                }
                return jSONObject;
            }
            if (readResponse.length() != 0) {
                jSONObject = new JSONObject(readResponse);
                return jSONObject;
            }
        }
        jSONObject = new JSONObject();
        return jSONObject;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public int register(String str, String str2, Object[] objArr) {
        return 100;
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void removePhoto(String str, String str2, String str3, String str4) {
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean renameFile(String str, String str2, String str3, String str4) {
        return false;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public void saveUserAndToken(String str, String str2, String str3, String str4) {
        if (this.access_tokens.size() == 0) {
            loadTokens();
        }
        synchronized (this.access_tokens) {
            this.access_tokens.put(str2, new User(str, str2, str3));
            FacebookFileSystemCache.instance().addServer(str2 + "@Facebook");
        }
        saveTokens();
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public void setConfigDir(String str, String str2) {
        this.storePath = str;
        this.private_storePath = str2;
        FacebookFileSystemCache.setPath(str);
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void setMeta(String str, String str2, String str3, String str4, String str5) {
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void setPerms(String str, String str2, String str3, TypedMap typedMap) {
        try {
            if (getCacheEntry(str, str3) == null) {
                Log.e("Facebook", "can't get cache entry for delete");
            } else if (getToken(str, str2) == null) {
                Log.e("Facebook", "delete, can't get the token");
            }
        } catch (Exception e) {
            throw new PhotoInfoException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public void setPrivateContent(String str, String str2, Object obj) {
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void setTags(String str, String str2, String str3, String str4) {
        try {
            String b2 = a.b(str3);
            String token = getToken(str, str2);
            if (token == null) {
                Log.e("Facebook", "delete, can't get the token");
            } else {
                HttpPost httpPost = new HttpPost(String.format(this.apiUri + "%s/tags?access_token=%s", b2, token));
                ArrayList arrayList = new ArrayList();
                arrayList.add(new BasicNameValuePair("name", str4));
                httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "utf-8"));
                execute(getNewHttpClient(), httpPost);
            }
        } catch (Exception e) {
            new NetFsException(e);
        }
    }
}

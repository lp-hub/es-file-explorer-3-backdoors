package com.estrongs.android.pop.spfs.instagram;

import android.util.Log;
import com.baidu.sapi2.BDAccountManager;
import com.estrongs.android.pop.netfs.INetRefreshCallback;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.netfs.utils.HttpUtils;
import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.pop.spfs.AlbumException;
import com.estrongs.android.pop.spfs.ESURLUtil;
import com.estrongs.android.pop.spfs.ISPFileSystem;
import com.estrongs.android.pop.spfs.OAuthConstants;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.pop.spfs.instagram.InstagramFileSystemCache;
import com.estrongs.android.pop.spfs.note.IPhotoInfo;
import com.estrongs.android.util.TypedMap;
import com.gmail.yuyang226.flickr.a.a;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.URL;
import java.security.KeyStore;
import java.security.cert.X509Certificate;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
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
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.simple.parser.JSONParser;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public class InstagramFileSystem implements ISPFileSystem, IPhotoInfo {
    private static final String CONFIG_FILE = "Instagram.cfg";
    private static final String CONFIG_SPLIT = "#####";
    private static final ThreadLocal<SimpleDateFormat> DATE_FORMATS;
    private static final int HTTP_AUTH_FAIL = 401;
    private static final String KEY_API_KEY = "api_key";
    public static final String KEY_EXTRAS = "extras";
    private static final String KEY_METHOD = "method";
    public static final String KEY_OAUTH_TOKEN = "oauth_token";
    public static final Set<String> MIN_EXTRAS = new HashSet();
    public static final String ORIGINAL_FORMAT = "original_format";
    public static final String OWNER_NAME = "owner_name";
    public static final String PARAMETER_DESCRIPTION = "description";
    public static final String PARAMETER_SETS = "sets";
    public static final String PARAMETER_TAGS = "tags";
    public static final String PARAMETER_TITLE = "title";
    public static final String PARAM_OAUTH_CONSUMER_KEY = "oauth_consumer_key";
    public static final String PRIVACY_IS_FAMILY = "is_family";
    public static final String PRIVACY_IS_FRIEND = "is_friend";
    public static final String PRIVACY_IS_PUBLIC = "is_public";
    public static final int PRIVACY_LEVEL_NO_FILTER = 0;
    private static final String client_id = "66f9c1cb708b4b9b9c96ac329260f536";
    private static final String client_secret = "d5b41a6c97344e3d8835e9d9a8fb17f6";
    private final String TAG = "Instagram";
    private final int STAT_NET_TYPE_INSTAGRAM = 51;
    private HashMap<String, User> access_tokens = new HashMap<>();
    private HashMap<String, String> access_tokens_type = new HashMap<>();
    private String storePath = null;
    private String private_storePath = null;
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
    private String lastErrorString = null;
    private String locale = null;
    private String callbackUrl = "http://www.estrongs.com";
    private String oAuthTokenUri = "https://api.instagram.com/oauth/access_token";
    private String apiUri = "https://api.instagram.com/v1";

    /* loaded from: classes.dex */
    public class MySSLSocketFactory extends SSLSocketFactory {
        SSLContext sslContext;

        public MySSLSocketFactory(KeyStore keyStore) {
            super(keyStore);
            this.sslContext = SSLContext.getInstance("TLS");
            this.sslContext.init(null, new TrustManager[]{new X509TrustManager() { // from class: com.estrongs.android.pop.spfs.instagram.InstagramFileSystem.MySSLSocketFactory.1
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
        MIN_EXTRAS.add("original_format");
        MIN_EXTRAS.add("owner_name");
        DATE_FORMATS = new ThreadLocal<SimpleDateFormat>() { // from class: com.estrongs.android.pop.spfs.instagram.InstagramFileSystem.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            public synchronized SimpleDateFormat initialValue() {
                return new SimpleDateFormat("yyyy-MM-dd");
            }
        };
    }

    private InstagramFileSystemCache.InstagramFileCacheEntry getCacheEntry(String str, String str2) {
        int serverId = getServerId(str);
        if (serverId == 0) {
            return null;
        }
        return InstagramFileSystemCache.instance().getFile(serverId, InstagramFileSystemCache.instance().getPathId(serverId, str2));
    }

    private String getChildValue(JSONObject jSONObject, String str) {
        if (jSONObject.has(str)) {
            return jSONObject.getJSONObject(str).optString("_content");
        }
        return null;
    }

    private InstagramFileSystemCache.InstagramFileCacheEntry getFileCacheEntry(JSONObject jSONObject, String str, boolean z) {
        try {
            InstagramFileSystemCache.InstagramFileCacheEntry instagramFileCacheEntry = new InstagramFileSystemCache.InstagramFileCacheEntry();
            if (instagramFileCacheEntry.isDir == 1) {
                instagramFileCacheEntry.size = 0;
            } else {
                instagramFileCacheEntry.size = -1;
            }
            String optString = jSONObject.getJSONObject("images").getJSONObject("standard_resolution").optString("url");
            if (optString.startsWith("http")) {
                instagramFileCacheEntry.url = optString;
            }
            if (optString == null || optString.length() == 0) {
                optString = jSONObject.getJSONObject("images").getJSONObject("low_resolution").optString("url");
                if (optString.startsWith("http")) {
                    instagramFileCacheEntry.url = optString;
                }
            }
            if (optString == null || optString.length() == 0) {
                String optString2 = jSONObject.getJSONObject("images").getJSONObject("thumbnail").optString("url");
                if (optString2.startsWith("http")) {
                    instagramFileCacheEntry.url = optString2;
                }
            }
            String optString3 = jSONObject.getJSONObject("images").getJSONObject("thumbnail").optString("url");
            if (optString3.startsWith("http")) {
                instagramFileCacheEntry.thumbnail_url = optString3;
            }
            if (optString3 == null || optString3.length() == 0) {
                optString3 = jSONObject.getJSONObject("images").getJSONObject("low_resolution").optString("url");
                if (optString3.startsWith("http")) {
                    instagramFileCacheEntry.thumbnail_url = optString3;
                }
            }
            if (optString3 == null || optString3.length() == 0) {
                String optString4 = jSONObject.getJSONObject("images").getJSONObject("standard_resolution").optString("url");
                if (optString4.startsWith("http")) {
                    instagramFileCacheEntry.thumbnail_url = optString4;
                }
            }
            instagramFileCacheEntry.url_id = jSONObject.getString(Name.MARK);
            try {
                instagramFileCacheEntry.name = jSONObject.getJSONObject("caption").optString("text");
            } catch (JSONException e) {
                instagramFileCacheEntry.name = instagramFileCacheEntry.url_id;
            }
            if (!z) {
                instagramFileCacheEntry.path = str;
            } else if (instagramFileCacheEntry.isDir == 1) {
                instagramFileCacheEntry.path = str.endsWith("/") ? str + instagramFileCacheEntry.name : str + "/" + instagramFileCacheEntry.name;
            } else {
                instagramFileCacheEntry.path = str.endsWith("/") ? str + instagramFileCacheEntry.url_id : str + "/" + instagramFileCacheEntry.url_id;
            }
            instagramFileCacheEntry.mtime = getDatePosted(jSONObject.optString("created_time"));
            instagramFileCacheEntry.ownerId = jSONObject.getJSONObject("user").optString(Name.MARK);
            instagramFileCacheEntry.ownerUsername = jSONObject.getJSONObject("user").optString(BDAccountManager.KEY_USERNAME);
            return instagramFileCacheEntry;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private String getFolderId(String str, String str2) {
        if (str2.equals("/")) {
            return "/me/skydrive";
        }
        InstagramFileSystemCache.InstagramFileCacheEntry cacheEntry = getCacheEntry(str, str2);
        if (cacheEntry != null) {
            return "/" + cacheEntry.url_id;
        }
        return null;
    }

    private Object getObject(Map map, String str) {
        return map.get(str);
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

    private String getPathName(String str) {
        String removeLastChar;
        int lastIndexOf;
        if (!str.equals("/") && (lastIndexOf = (removeLastChar = removeLastChar(str)).lastIndexOf(47)) >= 0) {
            return removeLastChar.substring(lastIndexOf + 1);
        }
        return null;
    }

    private int getServerId(String str) {
        String str2 = str + "@Instagram";
        int serverId = InstagramFileSystemCache.instance().getServerId(str2);
        if (serverId != 0) {
            return serverId;
        }
        InstagramFileSystemCache.instance().addServer(str2);
        return InstagramFileSystemCache.instance().getServerId(str2);
    }

    private User getToken(String str, String str2) {
        User user;
        if (this.access_tokens.size() == 0) {
            loadTokens();
        }
        synchronized (this.access_tokens) {
            user = this.access_tokens.get(str);
        }
        return user;
    }

    private String getTokenString(String str, String str2) {
        User token = getToken(str, str2);
        if (token == null) {
            return null;
        }
        return token.token;
    }

    private String getTokenType(String str) {
        String str2;
        synchronized (this.access_tokens_type) {
            str2 = this.access_tokens_type.get(str);
            if (str2 == null) {
                str2 = "Bearer";
            }
        }
        return str2;
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

    private String removeLastChar(String str) {
        return (!str.endsWith("/") || str.equals("/")) ? str : str.substring(0, str.length() - 1);
    }

    private void removePhoto(String str, String str2, String str3) {
        throw new AlbumException(new UnsupportedOperationException("removePhoto"));
    }

    private void removeToken(String str) {
        synchronized (this.access_tokens) {
            this.access_tokens.remove(str);
        }
    }

    private boolean saveTokens() {
        boolean z;
        synchronized (this.access_tokens) {
            File file = new File(this.private_storePath + "/" + CONFIG_FILE);
            file.delete();
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file));
                for (Map.Entry<String, User> entry : this.access_tokens.entrySet()) {
                    entry.getKey();
                    User value = entry.getValue();
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

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public String addComment(String str, String str2, String str3, String str4) {
        try {
            InstagramFileSystemCache.InstagramFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null) {
                Log.e("Instagram", "can't get cache entry for add comment");
                return null;
            }
            String tokenString = getTokenString(str, str2);
            if (tokenString == null) {
                Log.e("Instagram", "delete, can't get the token");
                return null;
            }
            Object[] objArr = {"text", str4, "access_token", tokenString};
            HttpPost httpPost = new HttpPost(this.apiUri + String.format("/media/%s/comments", cacheEntry.url_id));
            HttpUtils.setParameters(httpPost, objArr);
            JSONObject parseAsJSON = parseAsJSON(getNewHttpClient().execute(httpPost));
            if (parseAsJSON == null) {
                return null;
            }
            if (!parseAsJSON.has("meta") || !parseAsJSON.getJSONObject("meta").has("error_type")) {
                return parseAsJSON.getJSONObject("data").getString(Name.MARK);
            }
            Log.e("Instagram", "AddComment failed, error code:" + parseAsJSON.getJSONObject("meta").getString("error_message"));
            throw new PhotoInfoException(parseAsJSON.getJSONObject("meta").getString("error_message"));
        } catch (Exception e) {
            throw new PhotoInfoException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public a addNote(String str, String str2, String str3, a aVar) {
        throw new PhotoInfoException(new UnsupportedOperationException("addNote"));
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void addPhoto(String str, String str2, String str3, String str4) {
        throw new AlbumException(new UnsupportedOperationException("addPhoto"));
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean addServer(String str, String str2) {
        if (!authenticate(str, str2)) {
            return false;
        }
        InstagramFileSystemCache.instance().addServer(str + "@Instagram");
        return true;
    }

    public boolean authenticate(String str, String str2) {
        return getTokenString(str, str2) != null;
    }

    public void close() {
    }

    public InstagramFileSystemCache.InstagramFileCacheEntry convertToCacheEntry(SPFileInfo sPFileInfo) {
        InstagramFileSystemCache.InstagramFileCacheEntry instagramFileCacheEntry = new InstagramFileSystemCache.InstagramFileCacheEntry();
        instagramFileCacheEntry.path = sPFileInfo.path;
        instagramFileCacheEntry.mtime = Long.valueOf(sPFileInfo.lastModifiedTime / 1000).intValue();
        instagramFileCacheEntry.isDir = sPFileInfo.isDirectory ? 1 : 0;
        instagramFileCacheEntry.size = Long.valueOf(sPFileInfo.size).intValue();
        if (instagramFileCacheEntry.path == null || instagramFileCacheEntry.path.length() == 0) {
            instagramFileCacheEntry.path = "/";
        }
        return instagramFileCacheEntry;
    }

    public SPFileInfo convertToFileInfo(InstagramFileSystemCache.InstagramFileCacheEntry instagramFileCacheEntry) {
        if (instagramFileCacheEntry == null) {
            return null;
        }
        SPFileInfo sPFileInfo = new SPFileInfo();
        sPFileInfo.path = instagramFileCacheEntry.path;
        sPFileInfo.name = instagramFileCacheEntry.name;
        sPFileInfo.lastModifiedTime = instagramFileCacheEntry.mtime;
        sPFileInfo.lastModifiedTime *= 1000;
        sPFileInfo.readable = true;
        sPFileInfo.writable = true;
        sPFileInfo.hidden = sPFileInfo.name.startsWith(".");
        sPFileInfo.isDirectory = instagramFileCacheEntry.isDir == 1;
        sPFileInfo.size = instagramFileCacheEntry.size;
        sPFileInfo.folder_type = 0;
        sPFileInfo.publicFlag = instagramFileCacheEntry.publicFlag;
        sPFileInfo.friendFlag = instagramFileCacheEntry.friendFlag;
        sPFileInfo.familyFlag = instagramFileCacheEntry.familyFlag;
        sPFileInfo.notes = instagramFileCacheEntry.notes;
        sPFileInfo.description = instagramFileCacheEntry.description;
        sPFileInfo.ownerId = instagramFileCacheEntry.ownerId;
        sPFileInfo.ownerUsername = instagramFileCacheEntry.ownerUsername;
        return sPFileInfo;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean copyFile(String str, String str2, String str3, String str4) {
        return moveCopyFile(str, str2, str3, str4, false);
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public Album createAlbum(String str, String str2, String str3, String str4) {
        throw new AlbumException(new UnsupportedOperationException("createAlbum"));
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
        InstagramFileSystemCache.instance().delServer(str + "@Instagram");
        saveTokens();
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void deleteComment(String str, String str2, String str3, String str4) {
        try {
            InstagramFileSystemCache.InstagramFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null) {
                Log.e("Instagram", "can't get cache entry for delete comment");
                return;
            }
            String tokenString = getTokenString(str, str2);
            if (tokenString == null) {
                Log.e("Instagram", "delete, can't get the token");
                return;
            }
            JSONObject parseAsJSON = parseAsJSON(getNewHttpClient().execute(new HttpGet(this.apiUri + String.format("/media/%s/comments/%s", cacheEntry.url_id, str4) + "?access_token=" + tokenString)));
            if (parseAsJSON.has("meta") && parseAsJSON.getJSONObject("meta").has("error_type")) {
                Log.e("Instagram", "lsit failed, error code:" + parseAsJSON.getJSONObject("meta").getString("error_message"));
            }
        } catch (NetFsException e) {
            throw new PhotoInfoException(e);
        } catch (IOException e2) {
            throw new PhotoInfoException(e2);
        } catch (JSONException e3) {
            throw new PhotoInfoException(e3);
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean deleteFile(String str, String str2, String str3) {
        throw new NetFsException(new UnsupportedOperationException("deleteFile"));
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void deleteNote(String str, String str2, String str3) {
        throw new PhotoInfoException(new UnsupportedOperationException("deleteNote"));
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void editComment(String str, String str2, String str3, String str4) {
        throw new PhotoInfoException(new UnsupportedOperationException("getPhotoInfo"));
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void editNote(String str, String str2, a aVar) {
        throw new PhotoInfoException(new UnsupportedOperationException("editNote"));
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean exists(String str, String str2, String str3) {
        return str3.equals("/") || getCacheEntry(str, str3) != null;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public List<com.gmail.yuyang226.flickr.a> getAccessTokenParameters(String str, String str2, String str3) {
        return null;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public URL getAccessTokenUrl() {
        return null;
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public List<Album> getAlbums(String str, String str2, String str3) {
        throw new AlbumException(new UnsupportedOperationException("getAlbums"));
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public List<Album> getAllAlbums(String str, String str2) {
        throw new AlbumException(new UnsupportedOperationException("getAllAlbums"));
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public String getBuddyIcon(String str, String str2) {
        try {
            String tokenString = getTokenString(str, null);
            if (tokenString == null) {
                Log.e("Instagram", "getBuddyIcon, can't get the token");
                return null;
            }
            JSONObject parseAsJSON = parseAsJSON(getNewHttpClient().execute(new HttpGet(this.apiUri + String.format("/users/%s", str2) + "?access_token=" + tokenString)));
            if (!parseAsJSON.has("meta") || !parseAsJSON.getJSONObject("meta").has("error_type")) {
                return parseAsJSON.getJSONObject("data").getString("profile_picture");
            }
            Log.e("Instagram", "lsit failed, error code:" + parseAsJSON.getJSONObject("meta").getString("error_message"));
            return null;
        } catch (IOException e) {
            throw new PhotoInfoException(e);
        } catch (JSONException e2) {
            throw new PhotoInfoException(e2);
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public List<com.gmail.yuyang226.flickr.a.a.a> getComments(String str, String str2, String str3, TypedMap typedMap) {
        ArrayList arrayList = null;
        try {
            InstagramFileSystemCache.InstagramFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null) {
                Log.e("Instagram", "can't get cache entry for get comments");
            } else {
                String tokenString = getTokenString(str, str2);
                if (tokenString == null) {
                    Log.e("Instagram", "delete, can't get the token");
                } else {
                    JSONObject parseAsJSON = parseAsJSON(getNewHttpClient().execute(new HttpGet(this.apiUri + String.format("/media/%s/comments", cacheEntry.url_id) + "?access_token=" + tokenString)));
                    if (parseAsJSON.has("meta") && parseAsJSON.getJSONObject("meta").has("error_type")) {
                        Log.e("Instagram", "lsit failed, error code:" + parseAsJSON.getJSONObject("meta").getString("error_message"));
                    } else {
                        JSONArray jSONArray = parseAsJSON.getJSONArray("data");
                        if (jSONArray == null) {
                            Log.e("Instagram", "list no data");
                        } else {
                            arrayList = new ArrayList();
                            for (int i = 0; jSONArray != null && i < jSONArray.length(); i++) {
                                com.gmail.yuyang226.flickr.a.a.a aVar = new com.gmail.yuyang226.flickr.a.a.a();
                                JSONObject jSONObject = jSONArray.getJSONObject(i);
                                aVar.c(jSONObject.getString(Name.MARK));
                                aVar.a(jSONObject.getJSONObject(TypedMap.KEY_FROM).getString(Name.MARK));
                                aVar.b(jSONObject.getJSONObject(TypedMap.KEY_FROM).getString(BDAccountManager.KEY_USERNAME));
                                aVar.f(jSONObject.getJSONObject(TypedMap.KEY_FROM).getString("profile_picture"));
                                aVar.a(new Date(getDatePosted(jSONObject.getString("created_time")) * 1000));
                                String string = jSONObject.getString("text");
                                if (string != null) {
                                    string = EmojiUtil.stripEmoji(string);
                                }
                                if (string != null && string.length() != 0) {
                                    aVar.e(string);
                                    arrayList.add(aVar);
                                }
                            }
                            Collections.reverse(arrayList);
                        }
                    }
                }
            }
            return arrayList;
        } catch (Exception e) {
            throw new PhotoInfoException(e);
        }
    }

    public int getDatePosted(String str) {
        if (str == null || "".equals(str)) {
            return -1;
        }
        return Integer.parseInt(str);
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public SPFileInfo getFileInfo(String str, String str2, String str3) {
        if (str3.equals("/")) {
            return null;
        }
        try {
            InstagramFileSystemCache.InstagramFileCacheEntry cacheEntry = getCacheEntry(str, str3);
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
            InstagramFileSystemCache.InstagramFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null || cacheEntry.isDir != 0 || cacheEntry.url == null) {
                Log.e("Instagram", "can't get cache entry for InputStream");
                return null;
            }
            HttpGet httpGet = new HttpGet(cacheEntry.url);
            if (j != 0) {
                httpGet.addHeader("Range", "bytes=" + j + "-");
            }
            HttpResponse execute = getNewHttpClient().execute(httpGet);
            if (execute.getStatusLine().getStatusCode() != 200 && execute.getStatusLine().getStatusCode() != 203) {
                Log.e("Instagram", "getInputStream ret:" + execute.getStatusLine().getStatusCode());
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
        throw new NetFsException(new UnsupportedOperationException("getFileOutputStream"));
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
        return "https://api.instagram.com" + HttpUtils.buildGetUrl("/oauth/authorize", new Object[]{"client_id", client_id, "response_type", "code", "redirect_uri", "http://www.estrongs.com", "scope", "likes comments"}, true);
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public String getOAuthVersion() {
        return OAuthConstants.VERSION_2;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public String getPhotoExtension(String str, String str2, String str3) {
        try {
            InstagramFileSystemCache.InstagramFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry != null && cacheEntry.isDir == 0 && cacheEntry.url != null) {
                return cacheEntry.url.substring(cacheEntry.url.lastIndexOf(46));
            }
            Log.e("Instagram", "can't get cache entry for get photo extension");
            return null;
        } catch (Exception e) {
            throw new PhotoInfoException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public SPFileInfo getPhotoInfo(String str, String str2, String str3) {
        throw new PhotoInfoException(new UnsupportedOperationException("getPhotoInfo"));
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean getRegisterPrepareInfo(Object[] objArr) {
        return false;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public URL getRequestTokenUrl() {
        return null;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public InputStream getThumbnail(String str, String str2, String str3) {
        InputStream inputStream = null;
        try {
            InstagramFileSystemCache.InstagramFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null || cacheEntry.isDir != 0 || cacheEntry.url == null) {
                Log.e("Instagram", "can't get cache entry for InputStream");
            } else if (cacheEntry.thumbnail_url != null) {
                HttpGet httpGet = new HttpGet(cacheEntry.thumbnail_url);
                HttpClient newHttpClient = getNewHttpClient();
                if (getTokenString(str, str2) == null) {
                    Log.e("Instagram", "can't get token download");
                } else {
                    HttpResponse execute = newHttpClient.execute(httpGet);
                    if (execute.getStatusLine().getStatusCode() == 200 || execute.getStatusLine().getStatusCode() == 203) {
                        HttpEntity entity = execute.getEntity();
                        if (entity != null) {
                            inputStream = entity.getContent();
                        }
                    } else {
                        Log.e("Instagram", "getInputStream ret:" + execute.getStatusLine().getStatusCode());
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
            Object[] objArr = {"client_id", client_id, "client_secret", client_secret, "code", str, "redirect_uri", "http://www.estrongs.com", "grant_type", "authorization_code"};
            HttpPost httpPost = new HttpPost(this.oAuthTokenUri);
            HttpUtils.setParameters(httpPost, objArr);
            JSONObject parseAsJSON = parseAsJSON(getNewHttpClient().execute(httpPost));
            if (parseAsJSON == null) {
                return null;
            }
            if (parseAsJSON.has("error_type")) {
                Log.e("Instagram", "get token failed:" + parseAsJSON.optString("error_message"));
                return null;
            }
            String str2 = (String) parseAsJSON.get("access_token");
            if (str2 == null) {
                Log.e("Instagram", "get null token");
                return null;
            }
            String string = parseAsJSON.getJSONObject("user").getString(Name.MARK);
            String string2 = parseAsJSON.getJSONObject("user").getString(BDAccountManager.KEY_USERNAME);
            if (string2 != null) {
                saveUserAndToken(string, string2, str2, "");
            }
            return string2;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean isDir(String str, String str2, String str3) {
        InstagramFileSystemCache.InstagramFileCacheEntry cacheEntry = getCacheEntry(str, str3);
        if (cacheEntry == null) {
            return false;
        }
        return cacheEntry.isDir == 1;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public Map<String, SPFileInfo> listFiles(String str, String str2, String str3, boolean z, INetRefreshCallback iNetRefreshCallback, TypedMap typedMap) {
        return listFiles(str, str2, str3, z, iNetRefreshCallback, null, typedMap);
    }

    public Map<String, SPFileInfo> listFiles(String str, String str2, String str3, boolean z, INetRefreshCallback iNetRefreshCallback, String str4, TypedMap typedMap) {
        if (str3 == null) {
            return null;
        }
        getServerId(str);
        getCacheEntry(str, str3);
        try {
            HashMap<String, InstagramFileSystemCache.InstagramFileCacheEntry> listFilesInternal = listFilesInternal(str, str2, str3, typedMap);
            if (listFilesInternal == null) {
                return null;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (String str5 : listFilesInternal.keySet()) {
                SPFileInfo convertToFileInfo = convertToFileInfo(listFilesInternal.get(str5));
                if (convertToFileInfo != null) {
                    linkedHashMap.put(str5, convertToFileInfo);
                }
            }
            return linkedHashMap;
        } catch (NetFsException e) {
            e.printStackTrace();
            throw e;
        }
    }

    public HashMap<String, InstagramFileSystemCache.InstagramFileCacheEntry> listFilesInternal(String str, String str2, String str3, TypedMap typedMap) {
        return listFilesInternal(str, str2, str3, null, typedMap);
    }

    public HashMap<String, InstagramFileSystemCache.InstagramFileCacheEntry> listFilesInternal(String str, String str2, String str3, String str4, TypedMap typedMap) {
        InstagramFileSystemCache.InstagramFileCacheEntry instagramFileCacheEntry;
        int serverId = getServerId(str);
        InstagramFileSystemCache.InstagramFileCacheEntry cacheEntry = getCacheEntry(str, str3);
        try {
            int i = typedMap.getInt("per_page", 10L);
            int i2 = typedMap.getInt("page", 1L);
            String string = typedMap.getString("max_id", null);
            String tokenString = getTokenString(str, str2);
            if (tokenString == null) {
                Log.e("Instagram", "can't get the token");
                return null;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            String str5 = null;
            if ("mine".equals(typedMap.getString("content_type")) || (com.estrongs.fs.a.a.c(str3).size() >= 2 && "mine".equals(com.estrongs.fs.a.a.c(str3).get(1)))) {
                str5 = this.apiUri + "/users/" + this.access_tokens.get(str).id + "/media/recent?count=" + i + (string == null ? "" : "&max_id=" + string) + "&access_token=" + tokenString;
            } else if ("hot".equals(typedMap.getString("content_type")) || (com.estrongs.fs.a.a.c(str3).size() >= 2 && "hot".equals(com.estrongs.fs.a.a.c(str3).get(1)))) {
                str5 = this.apiUri + "/media/popular?access_token=" + tokenString;
            }
            if (str5 == null) {
                return null;
            }
            JSONObject parseAsJSON = parseAsJSON(getNewHttpClient().execute(new HttpGet(str5)));
            if (parseAsJSON.has("meta") && parseAsJSON.getJSONObject("meta").has("error_type")) {
                Log.e("Instagram", "lsit failed, error code:" + parseAsJSON.getJSONObject("meta").getString("error_message"));
                return null;
            }
            JSONArray jSONArray = parseAsJSON.getJSONArray("data");
            if (jSONArray == null) {
                Log.e("Instagram", "list no data");
                return null;
            }
            for (int i3 = 0; i3 < jSONArray.length(); i3++) {
                InstagramFileSystemCache.InstagramFileCacheEntry fileCacheEntry = getFileCacheEntry(jSONArray.getJSONObject(i3), str3, true);
                if (fileCacheEntry != null) {
                    linkedHashMap.put(fileCacheEntry.path, fileCacheEntry);
                }
            }
            if (cacheEntry == null) {
                InstagramFileSystemCache.InstagramFileCacheEntry instagramFileCacheEntry2 = new InstagramFileSystemCache.InstagramFileCacheEntry();
                instagramFileCacheEntry2.serverId = serverId;
                instagramFileCacheEntry2.path = str3;
                instagramFileCacheEntry2.isDir = 1;
                if ("/".equals(str3)) {
                    instagramFileCacheEntry2.parentId = 0;
                } else {
                    instagramFileCacheEntry2.parentId = InstagramFileSystemCache.instance().getPathId(serverId, getParentPath(str3));
                }
                InstagramFileSystemCache.instance().addFile(instagramFileCacheEntry2);
                instagramFileCacheEntry = InstagramFileSystemCache.instance().getFile(serverId, str3);
            } else {
                instagramFileCacheEntry = cacheEntry;
            }
            InstagramFileSystemCache.instance().updateFiles(serverId, instagramFileCacheEntry.id, linkedHashMap, i2 > 1);
            return linkedHashMap;
        } catch (Exception e) {
            e.printStackTrace();
            throw new NetFsException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean mkDirs(String str, String str2, String str3) {
        return createFile(str, str2, str3, true);
    }

    public boolean moveCopyFile(String str, String str2, String str3, String str4, boolean z) {
        return false;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean moveFile(String str, String str2, String str3, String str4) {
        return moveCopyFile(str, str2, str3, str4, true);
    }

    public JSONObject parseAsJSON(HttpResponse httpResponse) {
        JSONObject jSONObject;
        String readResponse = HttpUtils.readResponse(httpResponse);
        if (readResponse != null) {
            try {
            } catch (JSONException e) {
                jSONObject = new JSONObject();
                try {
                    jSONObject.put("error", "Unknown Error");
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
            if (readResponse.length() != 0) {
                new JSONParser();
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
        throw new AlbumException(new UnsupportedOperationException("removePhoto"));
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean renameFile(String str, String str2, String str3, String str4) {
        throw new NetFsException(new UnsupportedOperationException("deleteFile"));
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public void saveUserAndToken(String str, String str2, String str3, String str4) {
        if (this.access_tokens.size() == 0) {
            loadTokens();
        }
        synchronized (this.access_tokens) {
            this.access_tokens.put(str2, new User(str, str2, str3));
            InstagramFileSystemCache.instance().addServer(str2 + "@Instagram");
        }
        saveTokens();
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public void setConfigDir(String str, String str2) {
        this.storePath = str;
        this.private_storePath = str2;
        InstagramFileSystemCache.setPath(str);
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void setMeta(String str, String str2, String str3, String str4, String str5) {
        throw new PhotoInfoException(new UnsupportedOperationException("getPhotoInfo"));
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void setPerms(String str, String str2, String str3, TypedMap typedMap) {
        throw new PhotoInfoException(new UnsupportedOperationException("getPhotoInfo"));
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public void setPrivateContent(String str, String str2, Object obj) {
        this.locale = (String) obj;
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void setTags(String str, String str2, String str3, String str4) {
    }
}

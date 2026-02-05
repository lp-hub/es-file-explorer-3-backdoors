package com.estrongs.android.pop.spfs.flickr;

import android.util.Log;
import com.baidu.sapi2.BDAccountManager;
import com.estrongs.android.pop.netfs.INetRefreshCallback;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.netfs.utils.HttpUtils;
import com.estrongs.android.pop.netfs.utils.UploadOutputStream;
import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.pop.spfs.AlbumException;
import com.estrongs.android.pop.spfs.ESURLUtil;
import com.estrongs.android.pop.spfs.ISPFileSystem;
import com.estrongs.android.pop.spfs.OAuthConstants;
import com.estrongs.android.pop.spfs.OAuthUtil;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.pop.spfs.UploadPipedInputStream;
import com.estrongs.android.pop.spfs.flickr.FlickrFileSystemCache;
import com.estrongs.android.pop.spfs.note.IPhotoInfo;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ak;
import com.estrongs.fs.n;
import com.gmail.yuyang226.flickr.FlickrException;
import com.gmail.yuyang226.flickr.a;
import com.gmail.yuyang226.flickr.b;
import com.gmail.yuyang226.flickr.c;
import com.gmail.yuyang226.flickr.d.d;
import com.gmail.yuyang226.flickr.oauth.OAuthException;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
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
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import javax.xml.parsers.DocumentBuilderFactory;
import jcifs.https.Handler;
import jcifs.smb.SmbConstants;
import oauth.signpost.OAuth;
import org.apache.commons.net.SocketClient;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.mime.MIME;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public class FlickrFileSystem implements ISPFileSystem, IPhotoInfo {
    private static final String CONFIG_FILE = "Flickr.cfg";
    private static final String CONFIG_SPLIT = "#####";
    private static final ThreadLocal<SimpleDateFormat> DATE_FORMATS;
    public static final String DEFAULT_API_HOST = "api.flickr.com";
    public static final String DEFAULT_HOST = "www.flickr.com";
    private static final int HTTP_AUTH_FAIL = 401;
    private static final String KEY_API_KEY = "api_key";
    public static final String KEY_EXTRAS = "extras";
    private static final String KEY_METHOD = "method";
    public static final String KEY_OAUTH_TOKEN = "oauth_token";
    public static final String METHOD_ADD_COMMENT = "flickr.photos.comments.addComment";
    public static final String METHOD_ADD_COMMENT_To_PHOTOSET = "flickr.photosets.comments.addComment";
    public static final String METHOD_ADD_NOTE = "flickr.photos.notes.add";
    public static final String METHOD_ADD_PHOTO_TO_PHOTOSET = "flickr.photosets.addPhoto";
    public static final String METHOD_CREATE_PHOTOSET = "flickr.photosets.create";
    public static final String METHOD_DELETE = "flickr.photos.delete";
    public static final String METHOD_DELETE_COMMENT = "flickr.photos.comments.deleteComment";
    public static final String METHOD_DELETE_COMMENT_OF_PHOTOSET = "flickr.photosets.comments.deleteComment";
    public static final String METHOD_DELETE_NOTE = "flickr.photos.notes.delete";
    public static final String METHOD_DELETE_PHOTOSET = "flickr.photosets.delete";
    public static final String METHOD_EDIT_COMMENT = "flickr.photos.comments.editComment";
    public static final String METHOD_EDIT_META_OF_PHOTOSET = "flickr.photosets.editMeta";
    public static final String METHOD_EDIT_NOTE = "flickr.photos.notes.edit";
    public static final String METHOD_FIND_BY_EMAIL = "flickr.people.findByEmail";
    public static final String METHOD_FIND_BY_USERNAME = "flickr.people.findByUsername";
    public static final String METHOD_GET_ALL_CONTEXTS = "flickr.photos.getAllContexts";
    public static final String METHOD_GET_COMMENTS_OF_PHOTOSET = "flickr.photosets.comments.getList";
    public static final String METHOD_GET_COMMENT_LIST = "flickr.photos.comments.getList";
    public static final String METHOD_GET_INFO = "flickr.people.getInfo";
    public static final String METHOD_GET_INTERESTING_LIST = "flickr.interestingness.getList";
    public static final String METHOD_GET_ONLINE_LIST = "flickr.people.getOnlineList";
    public static final String METHOD_GET_PHOTOS = "flickr.people.getPhotos";
    public static final String METHOD_GET_PHOTOSET_LIST = "flickr.photosets.getList";
    public static final String METHOD_GET_PHOTOSET_PHOTO_LIST = "flickr.photosets.getPhotos";
    public static final String METHOD_GET_PHOTO_INFO = "flickr.photos.getInfo";
    public static final String METHOD_GET_PUBLIC_GROUPS = "flickr.people.getPublicGroups";
    public static final String METHOD_GET_PUBLIC_PHOTOS = "flickr.people.getPublicPhotos";
    public static final String METHOD_GET_RECENT = "flickr.photos.comments.getRecentForContacts";
    public static final String METHOD_GET_UPLOAD_STATUS = "flickr.people.getUploadStatus";
    public static final String METHOD_REMOVE_PHOTO_FROM_PHOTOSET = "flickr.photosets.removePhoto";
    public static final String METHOD_SET_META = "flickr.photos.setMeta";
    public static final String METHOD_SET_PERMS = "flickr.photos.setPerms";
    public static final String METHOD_SET_TAGS = "flickr.photos.setTags";
    public static final Set<String> MIN_EXTRAS = new HashSet();
    public static final String ORIGINAL_FORMAT = "original_format";
    public static final String OWNER_NAME = "owner_name";
    public static final String PARAMETER_MAX_COMMENT_DATE = "maxCommentDate";
    public static final String PARAMETER_MIN_COMMENT_DATE = "minCommentDate";
    public static final String PARAM_OAUTH_CONSUMER_KEY = "oauth_consumer_key";
    public static final int PRIVACY_LEVEL_NO_FILTER = 0;
    public static final String UPLOAD_PATH = "/services/upload/";
    public static final String URL_ACCESS_TOKEN = "http://www.flickr.com/services/oauth/access_token";
    private static final String URL_REQUEST_TOKEN = "http://www.flickr.com/services/oauth/request_token";
    public static final String URL_UPLOAD = "http://api.flickr.com/services/upload/";
    private static final String apiKey = "09cfe7214aec69fbda2b044b64305055";
    private static final String sharedSecret = "be578355f122df0a";
    private final String TAG = "Flickr";
    private final int STAT_NET_TYPE_FLICKR = 50;
    private HashMap<String, User> access_tokens = new HashMap<>();
    private HashMap<String, String> access_tokens_type = new HashMap<>();
    private String storePath = null;
    private String private_storePath = null;
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
    private String lastErrorString = null;
    private String locale = null;
    private String callbackUrl = "http://www.estrongs.com";

    /* loaded from: classes.dex */
    public class MySSLSocketFactory extends SSLSocketFactory {
        SSLContext sslContext;

        public MySSLSocketFactory(KeyStore keyStore) {
            super(keyStore);
            this.sslContext = SSLContext.getInstance("TLS");
            this.sslContext.init(null, new TrustManager[]{new X509TrustManager() { // from class: com.estrongs.android.pop.spfs.flickr.FlickrFileSystem.MySSLSocketFactory.1
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
        String tokenSecret;

        public User(String str, String str2, String str3, String str4) {
            this.id = str;
            this.name = str2;
            this.token = str3;
            this.tokenSecret = str4;
        }
    }

    static {
        MIN_EXTRAS.add("original_format");
        MIN_EXTRAS.add("owner_name");
        DATE_FORMATS = new ThreadLocal<SimpleDateFormat>() { // from class: com.estrongs.android.pop.spfs.flickr.FlickrFileSystem.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // java.lang.ThreadLocal
            public synchronized SimpleDateFormat initialValue() {
                return new SimpleDateFormat("yyyy-MM-dd");
            }
        };
    }

    private void addOAuthParams(String str, String str2, List<a> list, String str3) {
        com.gmail.yuyang226.flickr.oauth.a.a(list);
        signPost(str, str2, list, str3);
    }

    private void addOAuthToken(List<a> list, String str) {
        list.add(new a("oauth_token", getToken(str, null).token));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addPhoto(String str, String str2, String str3) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new a(KEY_METHOD, METHOD_ADD_PHOTO_TO_PHOTOSET));
            arrayList.add(new a("oauth_consumer_key", apiKey));
            arrayList.add(new a("photoset_id", str2));
            arrayList.add(new a("photo_id", str3));
            addOAuthToken(arrayList, str);
            c postJSON = postJSON(sharedSecret, arrayList, str);
            if (postJSON.b()) {
                throw new FlickrException(postJSON.c(), postJSON.d());
            }
        } catch (Exception e) {
            throw new AlbumException(e);
        }
    }

    private String dateToString(Date date) {
        if (date == null) {
            return null;
        }
        return DATE_FORMATS.get().format(date);
    }

    private FlickrFileSystemCache.FlickrFileCacheEntry getCacheEntry(String str, String str2) {
        int serverId = getServerId(str);
        if (serverId == 0) {
            return null;
        }
        return FlickrFileSystemCache.instance().getFile(serverId, FlickrFileSystemCache.instance().getPathId(serverId, str2));
    }

    private String getChildValue(JSONObject jSONObject, String str) {
        if (jSONObject.has(str)) {
            return jSONObject.getJSONObject(str).optString("_content");
        }
        return null;
    }

    private FlickrFileSystemCache.FlickrFileCacheEntry getFileCacheEntry(JSONObject jSONObject, String str, boolean z) {
        try {
            FlickrFileSystemCache.FlickrFileCacheEntry flickrFileCacheEntry = new FlickrFileSystemCache.FlickrFileCacheEntry();
            if (flickrFileCacheEntry.isDir == 1) {
                flickrFileCacheEntry.size = 0;
            } else {
                flickrFileCacheEntry.size = -1;
            }
            String optString = jSONObject.optString("url_l");
            if (optString.startsWith("http")) {
                flickrFileCacheEntry.url = optString;
            }
            if (optString == null || optString.length() == 0) {
                optString = jSONObject.optString("url_m");
                if (optString.startsWith("http")) {
                    flickrFileCacheEntry.url = optString;
                }
            }
            if (optString == null || optString.length() == 0) {
                optString = jSONObject.optString("url_q");
                if (optString.startsWith("http")) {
                    flickrFileCacheEntry.url = optString;
                }
            }
            if (optString == null || optString.length() == 0) {
                String optString2 = jSONObject.optString("url_sq");
                if (optString2.startsWith("http")) {
                    flickrFileCacheEntry.url = optString2;
                }
            }
            String optString3 = jSONObject.optString("url_q");
            if (optString3.startsWith("http")) {
                flickrFileCacheEntry.thumbnail_url = optString3;
            }
            if (optString3 == null || optString3.length() == 0) {
                optString3 = jSONObject.optString("url_m");
                if (optString3.startsWith("http")) {
                    flickrFileCacheEntry.thumbnail_url = optString3;
                }
            }
            if (optString3 == null || optString3.length() == 0) {
                optString3 = jSONObject.optString("url_l");
                if (optString3.startsWith("http")) {
                    flickrFileCacheEntry.thumbnail_url = optString3;
                }
            }
            if (optString3 == null || optString3.length() == 0) {
                String optString4 = jSONObject.optString("url_sq");
                if (optString4.startsWith("http")) {
                    flickrFileCacheEntry.thumbnail_url = optString4;
                }
            }
            JSONObject optJSONObject = jSONObject.optJSONObject("title");
            String string = optJSONObject != null ? optJSONObject.getString("_content") : jSONObject.getString("title");
            flickrFileCacheEntry.name = string;
            flickrFileCacheEntry.url_id = jSONObject.getString(Name.MARK);
            if (!z) {
                flickrFileCacheEntry.path = str;
            } else if (flickrFileCacheEntry.isDir == 1) {
                flickrFileCacheEntry.path = str.endsWith("/") ? str + string : str + "/" + string;
            } else {
                flickrFileCacheEntry.path = str.endsWith("/") ? str + flickrFileCacheEntry.url_id : str + "/" + flickrFileCacheEntry.url_id;
            }
            flickrFileCacheEntry.publicFlag = "1".equals(jSONObject.optString("ispublic"));
            flickrFileCacheEntry.friendFlag = "1".equals(jSONObject.optString("isfriend"));
            flickrFileCacheEntry.familyFlag = "1".equals(jSONObject.optString("isfamily"));
            String childValue = getChildValue(jSONObject, "description");
            if (childValue != null) {
                childValue = childValue.replaceAll("<[^>]*>", "").replaceAll("\\[http://[^]]*\\]", "");
            }
            flickrFileCacheEntry.description = childValue;
            flickrFileCacheEntry.mtime = getDatePosted(jSONObject.optString("dateupload"));
            JSONObject optJSONObject2 = jSONObject.optJSONObject("dates");
            if (optJSONObject2 != null) {
                flickrFileCacheEntry.mtime = getDatePosted(optJSONObject2.optString("posted"));
            }
            if (jSONObject.has("owner")) {
                Object obj = jSONObject.get("owner");
                if (obj instanceof JSONObject) {
                    JSONObject jSONObject2 = (JSONObject) obj;
                    flickrFileCacheEntry.ownerId = jSONObject2.getString("nsid");
                    flickrFileCacheEntry.ownerUsername = jSONObject2.optString(BDAccountManager.KEY_USERNAME, null);
                } else {
                    flickrFileCacheEntry.ownerId = jSONObject.getString("owner");
                    flickrFileCacheEntry.ownerUsername = jSONObject.optString("ownername", null);
                }
            }
            JSONObject optJSONObject3 = jSONObject.optJSONObject("notes");
            ArrayList arrayList = new ArrayList();
            if (optJSONObject3 != null) {
                JSONArray optJSONArray = optJSONObject3.optJSONArray("note");
                for (int i = 0; optJSONArray != null && i < optJSONArray.length(); i++) {
                    JSONObject jSONObject3 = optJSONArray.getJSONObject(i);
                    com.gmail.yuyang226.flickr.a.a aVar = new com.gmail.yuyang226.flickr.a.a();
                    aVar.a(jSONObject3.getString(Name.MARK));
                    aVar.b(jSONObject3.getString("author"));
                    aVar.c(jSONObject3.getString("authorname"));
                    aVar.a(jSONObject3.getString("x"), jSONObject3.getString("y"), jSONObject3.getString("w"), jSONObject3.getString("h"));
                    aVar.d(jSONObject3.getString("_content"));
                    arrayList.add(aVar);
                }
            }
            flickrFileCacheEntry.notes = arrayList;
            try {
                ArrayList arrayList2 = new ArrayList();
                Object opt = jSONObject.opt("tags");
                if (opt instanceof JSONObject) {
                    JSONArray optJSONArray2 = ((JSONObject) opt).optJSONArray("tag");
                    for (int i2 = 0; optJSONArray2 != null && i2 < optJSONArray2.length(); i2++) {
                        JSONObject jSONObject4 = optJSONArray2.getJSONObject(i2);
                        com.gmail.yuyang226.flickr.b.a aVar2 = new com.gmail.yuyang226.flickr.b.a();
                        aVar2.a(jSONObject4.getString(Name.MARK));
                        aVar2.b(jSONObject4.getString("author"));
                        aVar2.c(jSONObject4.getString("raw"));
                        aVar2.d(jSONObject4.optString("_content"));
                        arrayList2.add(aVar2);
                    }
                } else if (opt instanceof String) {
                    String[] split = opt.toString().split(" ");
                    for (String str2 : split) {
                        com.gmail.yuyang226.flickr.b.a aVar3 = new com.gmail.yuyang226.flickr.b.a();
                        aVar3.d(str2);
                        arrayList2.add(aVar3);
                    }
                }
                flickrFileCacheEntry.tags = arrayList2;
            } catch (NullPointerException e) {
                flickrFileCacheEntry.tags = new ArrayList();
            }
            return flickrFileCacheEntry;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private String getFolderId(String str, String str2) {
        if (str2.equals("/")) {
            return "/me/skydrive";
        }
        FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str2);
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

    private String getPhotoURL(String str, String str2, String str3) {
        try {
            if (getTokenString(str, str2) == null) {
                Log.e("Flickr", "delete, can't get the token");
                return null;
            }
            String str4 = getToken(str, null).tokenSecret;
            ArrayList arrayList = new ArrayList();
            arrayList.add(new a(KEY_METHOD, METHOD_GET_PHOTO_INFO));
            arrayList.add(new a("photo_id", str3));
            if (str4 != null) {
                arrayList.add(new a("secret", str4));
            }
            arrayList.add(new a("oauth_consumer_key", apiKey));
            addOAuthToken(arrayList, str);
            c postJSON = postJSON(sharedSecret, arrayList, str);
            if (postJSON.b()) {
                throw new FlickrException(postJSON.c(), postJSON.d());
            }
            JSONObject jSONObject = postJSON.a().getJSONObject("photo");
            return String.format("http://farm%1$s.static.flickr.com/%2$s/%3$s_%4$s.jpg", jSONObject.getString("farm"), jSONObject.getString("server"), jSONObject.getString(Name.MARK), jSONObject.getString("secret"));
        } catch (Exception e) {
            throw new PhotoInfoException(e);
        }
    }

    private JSONObject getPhotosByAlbum(String str, String str2, Set<String> set, int i, int i2, int i3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new a(KEY_METHOD, METHOD_GET_PHOTOSET_PHOTO_LIST));
        arrayList.add(new a("oauth_consumer_key", apiKey));
        arrayList.add(new a("photoset_id", str2));
        if (i2 > 0) {
            arrayList.add(new a("per_page", Integer.valueOf(i2)));
        }
        if (i3 > 0) {
            arrayList.add(new a("page", Integer.valueOf(i3)));
        }
        if (i > 0) {
            arrayList.add(new a("privacy_filter", "" + i));
        }
        if (set != null && !set.isEmpty()) {
            arrayList.add(new a("extras", com.gmail.yuyang226.flickr.d.c.a(set, ",")));
        }
        addOAuthToken(arrayList, str);
        c postJSON = postJSON(sharedSecret, arrayList, str);
        if (postJSON.b()) {
            throw new FlickrException(postJSON.c(), postJSON.d());
        }
        return postJSON.a();
    }

    private JSONObject getPhotosByMe(String str, Set<String> set, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new a(KEY_METHOD, METHOD_GET_PHOTOS));
        arrayList.add(new a("oauth_consumer_key", apiKey));
        arrayList.add(new a("user_id", getToken(str, null).id));
        if (i > 0) {
            arrayList.add(new a("per_page", "" + i));
        }
        if (i2 > 0) {
            arrayList.add(new a("page", "" + i2));
        }
        if (set != null) {
            arrayList.add(new a("extras", com.gmail.yuyang226.flickr.d.c.a(set, ",")));
        }
        arrayList.add(new a("oauth_token", getToken(str, null).token));
        c postJSON = postJSON(sharedSecret, arrayList, str);
        if (!postJSON.b()) {
            return postJSON.a();
        }
        Log.e("Flickr", "Error code: " + postJSON.c() + ",Error message: " + postJSON.d());
        return null;
    }

    private JSONObject getPhotosByPublic(String str, Set<String> set, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new a(KEY_METHOD, METHOD_GET_INTERESTING_LIST));
        arrayList.add(new a(KEY_API_KEY, apiKey));
        if (str != null) {
            arrayList.add(new a("date", str));
        }
        if (set != null) {
            arrayList.add(new a("extras", com.gmail.yuyang226.flickr.d.c.a(set, ",")));
        }
        if (i > 0) {
            arrayList.add(new a("per_page", String.valueOf(i)));
        }
        if (i2 > 0) {
            arrayList.add(new a("page", String.valueOf(i2)));
        }
        c cVar = get(new URL("http://www.flickr.com/services/rest"), arrayList);
        if (cVar.b()) {
            throw new FlickrException(cVar.c(), cVar.d());
        }
        return cVar.a();
    }

    private JSONObject getPhotosets(String str, int i, int i2) {
        String str2 = getToken(str, null).id;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new a(KEY_METHOD, METHOD_GET_PHOTOSET_LIST));
        arrayList.add(new a("oauth_consumer_key", apiKey));
        if (str2 != null) {
            arrayList.add(new a("user_id", str2));
        }
        addOAuthToken(arrayList, str);
        c postJSON = postJSON(sharedSecret, arrayList, str);
        if (postJSON.b()) {
            throw new FlickrException(postJSON.c(), postJSON.d());
        }
        return postJSON.a();
    }

    private int getServerId(String str) {
        String str2 = str + "@Flickr";
        int serverId = FlickrFileSystemCache.instance().getServerId(str2);
        if (serverId != 0) {
            return serverId;
        }
        FlickrFileSystemCache.instance().addServer(str2);
        return FlickrFileSystemCache.instance().getServerId(str2);
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
                    if (split.length == 4) {
                        hashMap.put(split[1], new User(split[0], split[1], split[2], split[3]));
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

    private c post(List<a> list) {
        return new b(OAuthUtil.sendPost(new URL("http://www.flickr.com:80/services/rest"), list));
    }

    private c postJSON(String str, List<a> list, String str2) {
        list.add(new a("nojsoncallback", "1"));
        list.add(new a("format", "json"));
        addOAuthParams(str, "http://www.flickr.com/services/rest", list, str2);
        return post(list);
    }

    private String removeLastChar(String str) {
        return (!str.endsWith("/") || str.equals("/")) ? str : str.substring(0, str.length() - 1);
    }

    private void removePhoto(String str, String str2, String str3) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new a(KEY_METHOD, METHOD_REMOVE_PHOTO_FROM_PHOTOSET));
            arrayList.add(new a("oauth_consumer_key", apiKey));
            arrayList.add(new a("photoset_id", str2));
            arrayList.add(new a("photo_id", str3));
            addOAuthToken(arrayList, str);
            c postJSON = postJSON(sharedSecret, arrayList, str);
            if (postJSON.b()) {
                throw new FlickrException(postJSON.c(), postJSON.d());
            }
        } catch (Exception e) {
            throw new AlbumException(e);
        }
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
                    bufferedWriter.write(value.id + CONFIG_SPLIT + value.name + CONFIG_SPLIT + value.token + CONFIG_SPLIT + value.tokenSecret + SocketClient.NETASCII_EOL);
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

    private void sign(String str, String str2, String str3, List<a> list, String str4) {
        list.add(new a(OAuth.OAUTH_SIGNATURE, com.gmail.yuyang226.flickr.oauth.a.a(str, str2, list, str3, getToken(str4, null).tokenSecret)));
    }

    private void signPost(String str, String str2, List<a> list, String str3) {
        sign("POST", str2, str, list, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public c upload(String str, List<a> list, String str2) {
        addOAuthParams(str, URL_UPLOAD, list, str2);
        return sendUpload(new URL("http://api.flickr.com:80/services/upload/"), list);
    }

    private void writeParam(a aVar, DataOutputStream dataOutputStream, String str) {
        String a2 = aVar.a();
        dataOutputStream.writeBytes(SocketClient.NETASCII_EOL);
        if (aVar instanceof com.gmail.yuyang226.flickr.c.a) {
            com.gmail.yuyang226.flickr.c.a aVar2 = (com.gmail.yuyang226.flickr.c.a) aVar;
            Object b2 = aVar.b();
            dataOutputStream.writeBytes(String.format(Locale.US, "Content-Disposition: form-data; name=\"%s\"; filename=\"%s\";\r\n", a2, aVar2.c()));
            dataOutputStream.writeBytes(String.format(Locale.US, "Content-Type: image/%s\r\n\r\n", aVar2.d()));
            if (b2 instanceof InputStream) {
                InputStream inputStream = (InputStream) b2;
                byte[] bArr = new byte[512];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    } else {
                        dataOutputStream.write(bArr, 0, read);
                    }
                }
            } else if (b2 instanceof byte[]) {
                dataOutputStream.write((byte[]) b2);
            }
        } else {
            dataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + a2 + "\"\r\n");
            dataOutputStream.writeBytes("Content-Type: text/plain; charset=UTF-8\r\n\r\n");
            dataOutputStream.write(((String) aVar.b()).getBytes("UTF-8"));
        }
        dataOutputStream.writeBytes(SocketClient.NETASCII_EOL);
        dataOutputStream.writeBytes(str);
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public String addComment(String str, String str2, String str3, String str4) {
        try {
            FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null) {
                Log.e("Flickr", "can't get cache entry for add comment");
                return null;
            }
            if (getTokenString(str, str2) == null) {
                Log.e("Flickr", "delete, can't get the token");
                return null;
            }
            ArrayList arrayList = new ArrayList();
            if (cacheEntry.isDir == 1) {
                arrayList.add(new a(KEY_METHOD, METHOD_ADD_COMMENT_To_PHOTOSET));
            } else {
                arrayList.add(new a(KEY_METHOD, METHOD_ADD_COMMENT));
            }
            arrayList.add(new a("oauth_consumer_key", apiKey));
            if (cacheEntry.isDir == 1) {
                arrayList.add(new a("photoset_id", cacheEntry.url_id));
            } else {
                arrayList.add(new a("photo_id", cacheEntry.url_id));
            }
            arrayList.add(new a("comment_text", str4));
            addOAuthToken(arrayList, str);
            c postJSON = postJSON(sharedSecret, arrayList, str);
            if (postJSON.b()) {
                throw new FlickrException(postJSON.c(), postJSON.d());
            }
            return postJSON.a().getJSONObject("comment").getString(Name.MARK);
        } catch (Exception e) {
            throw new PhotoInfoException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public com.gmail.yuyang226.flickr.a.a addNote(String str, String str2, String str3, com.gmail.yuyang226.flickr.a.a aVar) {
        try {
            FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null) {
                Log.e("Flickr", "can't get cache entry for add note");
                return null;
            }
            if (getTokenString(str, str2) == null) {
                Log.e("Flickr", "delete, can't get the token");
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(new a(KEY_METHOD, METHOD_ADD_NOTE));
            arrayList.add(new a("oauth_consumer_key", apiKey));
            arrayList.add(new a("photo_id", cacheEntry.url_id));
            com.gmail.yuyang226.flickr.a.b b2 = aVar.b();
            if (b2 != null) {
                arrayList.add(new a("note_x", String.valueOf(b2.f3256a)));
                arrayList.add(new a("note_y", String.valueOf(b2.f3257b)));
                arrayList.add(new a("note_w", String.valueOf(b2.c)));
                arrayList.add(new a("note_h", String.valueOf(b2.d)));
            }
            String c = aVar.c();
            if (c != null) {
                arrayList.add(new a("note_text", c));
            }
            addOAuthToken(arrayList, str);
            c postJSON = postJSON(sharedSecret, arrayList, str);
            if (postJSON.b()) {
                throw new FlickrException(postJSON.c(), postJSON.d());
            }
            aVar.a(postJSON.a().getJSONObject("note").getString(Name.MARK));
            return aVar;
        } catch (Exception e) {
            throw new PhotoInfoException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void addPhoto(String str, String str2, String str3, String str4) {
        try {
            if (getTokenString(str, str2) == null) {
                Log.e("Flickr", "delete, can't get the token");
            } else {
                addPhoto(str, com.estrongs.fs.a.a.b(str3), str4);
            }
        } catch (Exception e) {
            throw new AlbumException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean addServer(String str, String str2) {
        if (!authenticate(str, str2)) {
            return false;
        }
        FlickrFileSystemCache.instance().addServer(str + "@Flickr");
        return true;
    }

    public boolean authenticate(String str, String str2) {
        return getTokenString(str, str2) != null;
    }

    public void close() {
    }

    public FlickrFileSystemCache.FlickrFileCacheEntry convertToCacheEntry(SPFileInfo sPFileInfo) {
        FlickrFileSystemCache.FlickrFileCacheEntry flickrFileCacheEntry = new FlickrFileSystemCache.FlickrFileCacheEntry();
        flickrFileCacheEntry.path = sPFileInfo.path;
        flickrFileCacheEntry.mtime = Long.valueOf(sPFileInfo.lastModifiedTime / 1000).intValue();
        flickrFileCacheEntry.isDir = sPFileInfo.isDirectory ? 1 : 0;
        flickrFileCacheEntry.size = Long.valueOf(sPFileInfo.size).intValue();
        if (flickrFileCacheEntry.path == null || flickrFileCacheEntry.path.length() == 0) {
            flickrFileCacheEntry.path = "/";
        }
        return flickrFileCacheEntry;
    }

    public SPFileInfo convertToFileInfo(FlickrFileSystemCache.FlickrFileCacheEntry flickrFileCacheEntry) {
        if (flickrFileCacheEntry == null) {
            return null;
        }
        SPFileInfo sPFileInfo = new SPFileInfo();
        sPFileInfo.path = flickrFileCacheEntry.path;
        sPFileInfo.name = flickrFileCacheEntry.name;
        sPFileInfo.lastModifiedTime = flickrFileCacheEntry.mtime;
        sPFileInfo.lastModifiedTime *= 1000;
        sPFileInfo.readable = true;
        sPFileInfo.writable = true;
        sPFileInfo.hidden = sPFileInfo.name.startsWith(".");
        sPFileInfo.isDirectory = flickrFileCacheEntry.isDir == 1;
        sPFileInfo.size = flickrFileCacheEntry.size;
        sPFileInfo.folder_type = 0;
        sPFileInfo.publicFlag = flickrFileCacheEntry.publicFlag;
        sPFileInfo.friendFlag = flickrFileCacheEntry.friendFlag;
        sPFileInfo.familyFlag = flickrFileCacheEntry.familyFlag;
        sPFileInfo.notes = flickrFileCacheEntry.notes;
        sPFileInfo.tags = flickrFileCacheEntry.tags;
        sPFileInfo.description = flickrFileCacheEntry.description;
        sPFileInfo.ownerId = flickrFileCacheEntry.ownerId;
        sPFileInfo.ownerUsername = flickrFileCacheEntry.ownerUsername;
        return sPFileInfo;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean copyFile(String str, String str2, String str3, String str4) {
        return moveCopyFile(str, str2, str3, str4, false);
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public Album createAlbum(String str, String str2, String str3, String str4) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new a(KEY_METHOD, METHOD_CREATE_PHOTOSET));
            arrayList.add(new a("oauth_consumer_key", apiKey));
            arrayList.add(new a("title", str2));
            arrayList.add(new a("description", str3));
            arrayList.add(new a("primary_photo_id", str4));
            addOAuthToken(arrayList, str);
            c postJSON = postJSON(sharedSecret, arrayList, str);
            if (postJSON.b()) {
                throw new FlickrException(postJSON.c(), postJSON.d());
            }
            return new Album(postJSON.a().getJSONObject("photoset").getString(Name.MARK), str2, str3, null);
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
        FlickrFileSystemCache.instance().delServer(str + "@Flickr");
        saveTokens();
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void deleteComment(String str, String str2, String str3, String str4) {
        try {
            FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null) {
                Log.e("Flickr", "can't get cache entry for delete comment");
                return;
            }
            if (getTokenString(str, str2) == null) {
                Log.e("Flickr", "delete, can't get the token");
                return;
            }
            ArrayList arrayList = new ArrayList();
            if (cacheEntry.isDir == 1) {
                arrayList.add(new a(KEY_METHOD, METHOD_DELETE_COMMENT_OF_PHOTOSET));
            } else {
                arrayList.add(new a(KEY_METHOD, METHOD_DELETE_COMMENT));
            }
            arrayList.add(new a("oauth_consumer_key", apiKey));
            arrayList.add(new a("comment_id", str4));
            addOAuthToken(arrayList, str);
            c postJSON = postJSON(sharedSecret, arrayList, str);
            if (postJSON.b()) {
                throw new FlickrException(postJSON.c(), postJSON.d());
            }
        } catch (NetFsException e) {
            throw new PhotoInfoException(e);
        } catch (OAuthException e2) {
            throw new PhotoInfoException(e2);
        } catch (FlickrException e3) {
            throw new PhotoInfoException(e3);
        } catch (IOException e4) {
            throw new PhotoInfoException(e4);
        } catch (JSONException e5) {
            throw new PhotoInfoException(e5);
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean deleteFile(String str, String str2, String str3) {
        try {
            FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null) {
                Log.e("Flickr", "can't get cache entry for delete");
                return false;
            }
            if (getTokenString(str, str2) == null) {
                Log.e("Flickr", "delete, can't get the token");
                return false;
            }
            if (cacheEntry.isDir == 1) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(new a(KEY_METHOD, METHOD_DELETE_PHOTOSET));
                arrayList.add(new a("oauth_consumer_key", apiKey));
                arrayList.add(new a("photoset_id", cacheEntry.url_id));
                addOAuthToken(arrayList, str);
                c postJSON = postJSON(sharedSecret, arrayList, str);
                if (postJSON.b()) {
                    throw new FlickrException(postJSON.c(), postJSON.d());
                }
            } else {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(new a(KEY_METHOD, METHOD_DELETE));
                arrayList2.add(new a("oauth_consumer_key", apiKey));
                arrayList2.add(new a("photo_id", cacheEntry.url_id));
                addOAuthToken(arrayList2, str);
                c postJSON2 = postJSON(sharedSecret, arrayList2, str);
                if (postJSON2.b()) {
                    throw new FlickrException(postJSON2.c(), postJSON2.d());
                }
            }
            FlickrFileSystemCache.instance().deleteFile(cacheEntry.serverId, str3);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void deleteNote(String str, String str2, String str3) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new a(KEY_METHOD, METHOD_DELETE_NOTE));
            arrayList.add(new a("oauth_consumer_key", apiKey));
            arrayList.add(new a("note_id", str3));
            addOAuthToken(arrayList, str);
            c postJSON = postJSON(sharedSecret, arrayList, str);
            if (postJSON.b()) {
                throw new FlickrException(postJSON.c(), postJSON.d());
            }
        } catch (OAuthException e) {
            throw new PhotoInfoException(e);
        } catch (FlickrException e2) {
            throw new PhotoInfoException(e2);
        } catch (IOException e3) {
            throw new PhotoInfoException(e3);
        } catch (JSONException e4) {
            throw new PhotoInfoException(e4);
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void editComment(String str, String str2, String str3, String str4) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new a(KEY_METHOD, METHOD_EDIT_COMMENT));
            arrayList.add(new a("oauth_consumer_key", apiKey));
            arrayList.add(new a("comment_id", str3));
            arrayList.add(new a("comment_text", str4));
            addOAuthToken(arrayList, str);
            c postJSON = postJSON(sharedSecret, arrayList, str);
            if (postJSON.b()) {
                throw new FlickrException(postJSON.c(), postJSON.d());
            }
        } catch (OAuthException e) {
            throw new PhotoInfoException(e);
        } catch (FlickrException e2) {
            throw new PhotoInfoException(e2);
        } catch (IOException e3) {
            throw new PhotoInfoException(e3);
        } catch (JSONException e4) {
            throw new PhotoInfoException(e4);
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void editNote(String str, String str2, com.gmail.yuyang226.flickr.a.a aVar) {
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new a(KEY_METHOD, METHOD_EDIT_NOTE));
            arrayList.add(new a("oauth_consumer_key", apiKey));
            arrayList.add(new a("note_id", aVar.a()));
            com.gmail.yuyang226.flickr.a.b b2 = aVar.b();
            if (b2 != null) {
                arrayList.add(new a("note_x", String.valueOf(b2.f3256a)));
                arrayList.add(new a("note_y", String.valueOf(b2.f3257b)));
                arrayList.add(new a("note_w", String.valueOf(b2.c)));
                arrayList.add(new a("note_h", String.valueOf(b2.d)));
            }
            String c = aVar.c();
            if (c != null) {
                arrayList.add(new a("note_text", c));
            }
            addOAuthToken(arrayList, str);
            c postJSON = postJSON(sharedSecret, arrayList, str);
            if (postJSON.b()) {
                throw new FlickrException(postJSON.c(), postJSON.d());
            }
        } catch (OAuthException e) {
            throw new PhotoInfoException(e);
        } catch (FlickrException e2) {
            throw new PhotoInfoException(e2);
        } catch (IOException e3) {
            throw new PhotoInfoException(e3);
        } catch (JSONException e4) {
            throw new PhotoInfoException(e4);
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean exists(String str, String str2, String str3) {
        return str3.equals("/") || getCacheEntry(str, str3) != null;
    }

    public c get(URL url, List<a> list) {
        list.add(new a("nojsoncallback", "1"));
        list.add(new a("format", "json"));
        return new b(OAuthUtil.getLine(url, list));
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public List<a> getAccessTokenParameters(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new a("oauth_consumer_key", apiKey));
        arrayList.add(new a("oauth_token", str));
        arrayList.add(new a(OAuth.OAUTH_VERIFIER, str3));
        com.gmail.yuyang226.flickr.oauth.a.a(arrayList);
        try {
            arrayList.add(new a(OAuth.OAUTH_SIGNATURE, com.gmail.yuyang226.flickr.oauth.a.a("POST", URL_ACCESS_TOKEN, arrayList, sharedSecret, str2)));
        } catch (FlickrException e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public URL getAccessTokenUrl() {
        try {
            return d.a(DEFAULT_HOST, 80, "/services/oauth/access_token");
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public List<Album> getAlbums(String str, String str2, String str3) {
        ArrayList arrayList = null;
        try {
            FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null) {
                Log.e("Flickr", "can't get cache entry for get albums");
            } else if (getTokenString(str, str2) == null) {
                Log.e("Flickr", "delete, can't get the token");
            } else {
                arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(new a(KEY_METHOD, METHOD_GET_ALL_CONTEXTS));
                arrayList2.add(new a("photo_id", cacheEntry.url_id));
                arrayList2.add(new a("oauth_consumer_key", apiKey));
                addOAuthToken(arrayList2, str);
                c postJSON = postJSON(sharedSecret, arrayList2, str);
                if (postJSON.b()) {
                    throw new FlickrException(postJSON.c(), postJSON.d());
                }
                JSONArray optJSONArray = postJSON.a().optJSONArray("set");
                for (int i = 0; optJSONArray != null && i < optJSONArray.length(); i++) {
                    JSONObject jSONObject = optJSONArray.getJSONObject(i);
                    arrayList.add(new Album(jSONObject.getString(Name.MARK), jSONObject.getString("title"), null, null));
                }
            }
            return arrayList;
        } catch (Exception e) {
            throw new AlbumException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public List<Album> getAllAlbums(String str, String str2) {
        try {
            ArrayList arrayList = new ArrayList();
            JSONArray optJSONArray = getPhotosets(str, 500, 1).getJSONObject("photosets").optJSONArray("photoset");
            int i = 0;
            while (optJSONArray != null) {
                if (i >= optJSONArray.length()) {
                    break;
                }
                JSONObject jSONObject = optJSONArray.getJSONObject(i);
                arrayList.add(new Album(jSONObject.getString(Name.MARK), getChildValue(jSONObject, "title"), getChildValue(jSONObject, "description"), null));
                i++;
            }
            return arrayList;
        } catch (Exception e) {
            throw new AlbumException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public String getBuddyIcon(String str, String str2) {
        return "http://flickr.com/buddyicons/" + str2 + ".jpg";
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public List<com.gmail.yuyang226.flickr.a.a.a> getComments(String str, String str2, String str3, TypedMap typedMap) {
        c postJSON;
        ArrayList arrayList = null;
        try {
            Date date = typedMap.getDate(PARAMETER_MIN_COMMENT_DATE);
            Date date2 = typedMap.getDate(PARAMETER_MAX_COMMENT_DATE);
            FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null) {
                Log.e("Flickr", "can't get cache entry for get comments");
            } else if (getTokenString(str, str2) == null) {
                Log.e("Flickr", "delete, can't get the token");
            } else {
                ArrayList arrayList2 = new ArrayList();
                if (cacheEntry.isDir == 1) {
                    arrayList2.add(new a(KEY_METHOD, METHOD_GET_COMMENTS_OF_PHOTOSET));
                    arrayList2.add(new a(KEY_API_KEY, apiKey));
                    arrayList2.add(new a("photoset_id", cacheEntry.url_id));
                    postJSON = get(new URL("http://www.flickr.com:80/services/rest"), arrayList2);
                } else {
                    arrayList2.add(new a(KEY_METHOD, METHOD_GET_COMMENT_LIST));
                    arrayList2.add(new a("oauth_consumer_key", apiKey));
                    arrayList2.add(new a("photo_id", cacheEntry.url_id));
                    if (date != null) {
                        arrayList2.add(new a("min_comment_date", date.getTime() / 1000));
                    }
                    if (date2 != null) {
                        arrayList2.add(new a("max_comment_date", date2.getTime() / 1000));
                    }
                    addOAuthToken(arrayList2, str);
                    postJSON = postJSON(sharedSecret, arrayList2, str);
                }
                if (postJSON.b()) {
                    throw new FlickrException(postJSON.c(), postJSON.d());
                }
                arrayList = new ArrayList();
                JSONArray optJSONArray = postJSON.a().getJSONObject("comments").optJSONArray("comment");
                for (int i = 0; optJSONArray != null && i < optJSONArray.length(); i++) {
                    com.gmail.yuyang226.flickr.a.a.a aVar = new com.gmail.yuyang226.flickr.a.a.a();
                    JSONObject jSONObject = optJSONArray.getJSONObject(i);
                    aVar.c(jSONObject.getString(Name.MARK));
                    aVar.a(jSONObject.getString("author"));
                    aVar.b(jSONObject.getString("authorname"));
                    aVar.d(jSONObject.getString("permalink"));
                    aVar.a(new Date(jSONObject.optLong("datecreate") * 1000));
                    String string = jSONObject.getString("_content");
                    if (string != null) {
                        string = string.replaceAll("<[^>]*>", "").replaceAll("\\[http://[^]]*\\]", "");
                    }
                    aVar.e(string);
                    arrayList.add(aVar);
                }
                Collections.reverse(arrayList);
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
            FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str3);
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
            FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null || cacheEntry.url == null) {
                Log.e("Flickr", "can't get cache entry for InputStream");
                return null;
            }
            HttpGet httpGet = new HttpGet(cacheEntry.isDir == 1 ? getPhotoURL(str, str2, cacheEntry.url) : cacheEntry.url);
            if (j != 0) {
                httpGet.addHeader("Range", "bytes=" + j + "-");
            }
            HttpResponse execute = getNewHttpClient().execute(httpGet);
            if (execute.getStatusLine().getStatusCode() != 200 && execute.getStatusLine().getStatusCode() != 203) {
                Log.e("Flickr", "getInputStream ret:" + execute.getStatusLine().getStatusCode());
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
    public OutputStream getFileOutputStream(final String str, final String str2, String str3, long j, final TypedMap typedMap) {
        try {
            String pathName = getPathName(removeLastChar(str3));
            final ArrayList arrayList = new ArrayList();
            arrayList.add(new a("oauth_consumer_key", apiKey));
            String string = typedMap.getString("title");
            if (string == null || string.length() == 0) {
                string = pathName.indexOf(46) >= 0 ? pathName.substring(0, pathName.indexOf(46)) : pathName;
            }
            if (string != null) {
                arrayList.add(new a("title", string));
            }
            String string2 = typedMap.getString("description");
            if (string2 != null && string2.length() > 0) {
                arrayList.add(new a("description", string2));
            }
            if (typedMap.getString("tags") != null && typedMap.getString("tags").length() > 0) {
                arrayList.add(new a("tags", typedMap.getString("tags")));
            }
            arrayList.add(new a("is_public", typedMap.getBoolean("is_public", true) ? "1" : "0"));
            arrayList.add(new a("is_family", typedMap.getBoolean("is_family", false) ? "1" : "0"));
            arrayList.add(new a("is_friend", typedMap.getBoolean("is_friend", false) ? "1" : "0"));
            arrayList.add(new a("async", "0"));
            final UploadOutputStream uploadOutputStream = new UploadOutputStream();
            final UploadPipedInputStream uploadPipedInputStream = new UploadPipedInputStream(j);
            try {
                uploadPipedInputStream.connect(uploadOutputStream);
                arrayList.add(new com.gmail.yuyang226.flickr.c.a(pathName, uploadPipedInputStream));
                addOAuthToken(arrayList, str);
                Thread thread = new Thread() { // from class: com.estrongs.android.pop.spfs.flickr.FlickrFileSystem.2
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            com.gmail.yuyang226.flickr.c.b bVar = (com.gmail.yuyang226.flickr.c.b) FlickrFileSystem.this.upload(FlickrFileSystem.sharedSecret, arrayList, str);
                            if (bVar.b()) {
                                uploadOutputStream.setResult(false);
                                return;
                            }
                            uploadOutputStream.setResult(true);
                            if (typedMap.get("sets") != null) {
                                List list = (List) typedMap.get("sets");
                                for (int i = 0; i < list.size(); i++) {
                                    if (((Album) list.get(i)).id != null) {
                                        FlickrFileSystem.this.addPhoto(str, ((Album) list.get(i)).id, bVar.e());
                                        if (((Album) list.get(i)).path != null) {
                                            com.estrongs.fs.a.b.a().a(new n(((Album) list.get(i)).path + "/" + bVar.e()));
                                        }
                                    } else {
                                        Album createAlbum = FlickrFileSystem.this.createAlbum(str, ((Album) list.get(i)).name, ((Album) list.get(i)).description, bVar.e());
                                        ((Album) list.get(i)).id = createAlbum.id;
                                        ((Album) list.get(i)).path = createAlbum.path;
                                        ((Album) list.get(i)).name = createAlbum.name;
                                        ((Album) list.get(i)).description = createAlbum.description;
                                        com.estrongs.fs.a.b.a().a(new n(ak.b("Flickr", str, str2, "/album/" + ((Album) list.get(i)).id)));
                                    }
                                }
                            }
                        } catch (Exception e) {
                            try {
                                e.printStackTrace();
                                uploadOutputStream.setResult(false);
                                uploadOutputStream.setErrorMessage(e.getMessage());
                                uploadPipedInputStream.close();
                            } catch (Exception e2) {
                            }
                        }
                    }
                };
                uploadOutputStream.setTask(thread, uploadPipedInputStream);
                thread.start();
                return uploadOutputStream;
            } catch (IOException e) {
                Log.e("Flickr", "Can't create pipe stream");
                return null;
            }
        } catch (Exception e2) {
            return null;
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
        ArrayList arrayList = new ArrayList();
        arrayList.add(new a("oauth_token", str));
        arrayList.add(new a("perms", "delete"));
        try {
            return d.a(DEFAULT_HOST, 80, "/services/oauth/authorize", arrayList).toString();
        } catch (MalformedURLException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public String getOAuthVersion() {
        return OAuthConstants.VERSION_10A;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public String getPhotoExtension(String str, String str2, String str3) {
        try {
            FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry != null && cacheEntry.isDir == 0 && cacheEntry.url != null) {
                return cacheEntry.url.substring(cacheEntry.url.lastIndexOf(46));
            }
            Log.e("Flickr", "can't get cache entry for get photo extension");
            return null;
        } catch (Exception e) {
            throw new PhotoInfoException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public SPFileInfo getPhotoInfo(String str, String str2, String str3) {
        try {
            FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null) {
                Log.e("Flickr", "can't get cache entry for get photo info");
                return null;
            }
            if (getTokenString(str, str2) == null) {
                Log.e("Flickr", "delete, can't get the token");
                return null;
            }
            String str4 = getToken(str, null).tokenSecret;
            ArrayList arrayList = new ArrayList();
            arrayList.add(new a(KEY_METHOD, METHOD_GET_PHOTO_INFO));
            arrayList.add(new a("photo_id", cacheEntry.url_id));
            if (str4 != null) {
                arrayList.add(new a("secret", str4));
            }
            arrayList.add(new a("oauth_consumer_key", apiKey));
            addOAuthToken(arrayList, str);
            c postJSON = postJSON(sharedSecret, arrayList, str);
            if (postJSON.b()) {
                throw new FlickrException(postJSON.c(), postJSON.d());
            }
            return convertToFileInfo(getFileCacheEntry(postJSON.a().getJSONObject("photo"), str3, false));
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
        ArrayList arrayList = new ArrayList();
        arrayList.add(new a(OAuth.OAUTH_CALLBACK, this.callbackUrl));
        arrayList.add(new a("oauth_consumer_key", apiKey));
        com.gmail.yuyang226.flickr.oauth.a.a(arrayList);
        try {
            arrayList.add(new a(OAuth.OAUTH_SIGNATURE, com.gmail.yuyang226.flickr.oauth.a.a("GET", URL_REQUEST_TOKEN, arrayList, sharedSecret, null)));
            return d.a(DEFAULT_HOST, 80, "/services/oauth/request_token", arrayList);
        } catch (FlickrException e) {
            e.printStackTrace();
            return null;
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public InputStream getThumbnail(String str, String str2, String str3) {
        InputStream inputStream = null;
        try {
            FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null || cacheEntry.isDir != 0 || cacheEntry.url == null) {
                Log.e("Flickr", "can't get cache entry for InputStream");
            } else if (cacheEntry.thumbnail_url != null) {
                HttpGet httpGet = new HttpGet(cacheEntry.thumbnail_url);
                HttpClient newHttpClient = getNewHttpClient();
                String tokenString = getTokenString(str, str2);
                if (tokenString == null) {
                    Log.e("Flickr", "can't get token download");
                } else {
                    httpGet.setHeader(OAuth.HTTP_AUTHORIZATION_HEADER, "bearer " + tokenString);
                    HttpResponse execute = newHttpClient.execute(httpGet);
                    if (execute.getStatusLine().getStatusCode() == 200 || execute.getStatusLine().getStatusCode() == 203) {
                        HttpEntity entity = execute.getEntity();
                        if (entity != null) {
                            inputStream = entity.getContent();
                        }
                    } else {
                        Log.e("Flickr", "getInputStream ret:" + execute.getStatusLine().getStatusCode());
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
        return null;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean isDir(String str, String str2, String str3) {
        FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str3);
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
            HashMap<String, FlickrFileSystemCache.FlickrFileCacheEntry> listFilesInternal = listFilesInternal(str, str2, str3, typedMap);
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
            throw e;
        }
    }

    public HashMap<String, FlickrFileSystemCache.FlickrFileCacheEntry> listFilesInternal(String str, String str2, String str3, TypedMap typedMap) {
        return listFilesInternal(str, str2, str3, null, typedMap);
    }

    public HashMap<String, FlickrFileSystemCache.FlickrFileCacheEntry> listFilesInternal(String str, String str2, String str3, String str4, TypedMap typedMap) {
        JSONObject jSONObject;
        boolean z;
        FlickrFileSystemCache.FlickrFileCacheEntry flickrFileCacheEntry;
        int serverId = getServerId(str);
        FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str3);
        try {
            int i = typedMap.getInt("per_page", 10L);
            int i2 = typedMap.getInt("page", 1L);
            HashSet hashSet = new HashSet();
            hashSet.add("url_sq");
            hashSet.add("url_q");
            hashSet.add("url_m");
            hashSet.add("url_l");
            hashSet.add("views");
            hashSet.add("description");
            hashSet.add("date_upload");
            hashSet.add("owner_name");
            if ("mine".equals(typedMap.getString("content_type")) || (com.estrongs.fs.a.a.c(str3).size() >= 2 && "mine".equals(com.estrongs.fs.a.a.c(str3).get(1)))) {
                jSONObject = getPhotosByMe(str, hashSet, i, i2).getJSONObject("photos");
                z = false;
            } else if ("hot".equals(typedMap.getString("content_type")) || (com.estrongs.fs.a.a.c(str3).size() >= 2 && "hot".equals(com.estrongs.fs.a.a.c(str3).get(1)))) {
                jSONObject = getPhotosByPublic(dateToString(typedMap.getDate("date")), hashSet, i, i2).getJSONObject("photos");
                z = false;
            } else if (!"album".equals(typedMap.getString("content_type")) && (com.estrongs.fs.a.a.c(str3).size() < 2 || !"album".equals(com.estrongs.fs.a.a.c(str3).get(1)))) {
                jSONObject = null;
                z = true;
            } else if (com.estrongs.fs.a.a.c(str3).size() == 2) {
                jSONObject = getPhotosets(str, i, i2).getJSONObject("photosets");
                z = true;
            } else {
                jSONObject = getPhotosByAlbum(str, com.estrongs.fs.a.a.c(str3).get(2), hashSet, 0, i, i2).getJSONObject("photoset");
                z = false;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (jSONObject != null) {
                if (z) {
                    JSONArray optJSONArray = jSONObject.optJSONArray("photoset");
                    for (int i3 = 0; optJSONArray != null && i3 < optJSONArray.length(); i3++) {
                        JSONObject jSONObject2 = optJSONArray.getJSONObject(i3);
                        FlickrFileSystemCache.FlickrFileCacheEntry flickrFileCacheEntry2 = new FlickrFileSystemCache.FlickrFileCacheEntry();
                        flickrFileCacheEntry2.isDir = 1;
                        flickrFileCacheEntry2.url_id = jSONObject2.getString(Name.MARK);
                        flickrFileCacheEntry2.path = str3.endsWith("/") ? str3 + flickrFileCacheEntry2.url_id : str3 + "/" + flickrFileCacheEntry2.url_id;
                        flickrFileCacheEntry2.url = jSONObject2.getString("primary");
                        flickrFileCacheEntry2.mtime = getDatePosted(jSONObject2.getString("date_create"));
                        if (jSONObject2.has("owner")) {
                            flickrFileCacheEntry2.ownerId = jSONObject2.getString("owner");
                        }
                        flickrFileCacheEntry2.ownerId = getToken(str, null).id;
                        flickrFileCacheEntry2.ownerUsername = str;
                        flickrFileCacheEntry2.name = getChildValue(jSONObject2, "title");
                        flickrFileCacheEntry2.description = getChildValue(jSONObject2, "description");
                        linkedHashMap.put(flickrFileCacheEntry2.path, flickrFileCacheEntry2);
                    }
                } else {
                    jSONObject.optInt("page");
                    jSONObject.optInt("pages");
                    jSONObject.optInt("perpage");
                    jSONObject.optInt("total");
                    JSONArray optJSONArray2 = jSONObject.optJSONArray("photo");
                    for (int i4 = 0; optJSONArray2 != null && i4 < optJSONArray2.length(); i4++) {
                        FlickrFileSystemCache.FlickrFileCacheEntry fileCacheEntry = getFileCacheEntry(optJSONArray2.getJSONObject(i4), str3, true);
                        if (fileCacheEntry != null) {
                            linkedHashMap.put(fileCacheEntry.path, fileCacheEntry);
                        }
                    }
                }
                if (cacheEntry == null) {
                    FlickrFileSystemCache.FlickrFileCacheEntry flickrFileCacheEntry3 = new FlickrFileSystemCache.FlickrFileCacheEntry();
                    flickrFileCacheEntry3.serverId = serverId;
                    flickrFileCacheEntry3.path = str3;
                    flickrFileCacheEntry3.isDir = 1;
                    if ("/".equals(str3)) {
                        flickrFileCacheEntry3.parentId = 0;
                    } else {
                        flickrFileCacheEntry3.parentId = FlickrFileSystemCache.instance().getPathId(serverId, getParentPath(str3));
                    }
                    FlickrFileSystemCache.instance().addFile(flickrFileCacheEntry3);
                    flickrFileCacheEntry = FlickrFileSystemCache.instance().getFile(serverId, str3);
                } else {
                    flickrFileCacheEntry = cacheEntry;
                }
                FlickrFileSystemCache.instance().updateFiles(serverId, flickrFileCacheEntry.id, linkedHashMap, i2 > 1);
            }
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

    public Map parseAsJSON(HttpResponse httpResponse) {
        Map map;
        String readResponse = HttpUtils.readResponse(httpResponse);
        if (readResponse != null) {
            try {
                if (readResponse.length() != 0) {
                    map = (Map) new JSONParser().parse(readResponse);
                    return map;
                }
            } catch (ParseException e) {
                HashMap hashMap = new HashMap();
                hashMap.put("error", "Unknown Error");
                return hashMap;
            }
        }
        map = new HashMap();
        return map;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public int register(String str, String str2, Object[] objArr) {
        return 100;
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void removePhoto(String str, String str2, String str3, String str4) {
        try {
            if (getTokenString(str, str2) == null) {
                Log.e("Flickr", "delete, can't get the token");
            } else {
                removePhoto(str, com.estrongs.fs.a.a.b(str3), str4);
            }
        } catch (Exception e) {
            throw new AlbumException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean renameFile(String str, String str2, String str3, String str4) {
        try {
            FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null) {
                Log.e("Flickr", "can't get cache entry for rename");
                return false;
            }
            String pathName = getPathName(str4);
            String substring = pathName.indexOf(46) >= 0 ? pathName.substring(0, pathName.indexOf(46)) : pathName;
            ArrayList arrayList = new ArrayList();
            arrayList.add(new a(KEY_METHOD, METHOD_SET_META));
            arrayList.add(new a("oauth_consumer_key", apiKey));
            arrayList.add(new a("photo_id", cacheEntry.url_id));
            arrayList.add(new a("title", substring));
            addOAuthToken(arrayList, str);
            if (postJSON(sharedSecret, arrayList, str).b()) {
                Log.e("Flickr", "rename failed");
                return false;
            }
            FlickrFileSystemCache instance = FlickrFileSystemCache.instance();
            cacheEntry.name = pathName;
            instance.udpateFile(cacheEntry);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public void saveUserAndToken(String str, String str2, String str3, String str4) {
        if (this.access_tokens.size() == 0) {
            loadTokens();
        }
        synchronized (this.access_tokens) {
            this.access_tokens.put(str2, new User(str, str2, str3, str4));
            FlickrFileSystemCache.instance().addServer(str2 + "@Flickr");
        }
        saveTokens();
    }

    protected c sendUpload(URL url, List<a> list) {
        DataOutputStream dataOutputStream;
        DataOutputStream dataOutputStream2;
        int responseCode;
        HttpURLConnection httpURLConnection = null;
        try {
            HttpURLConnection httpURLConnection2 = (HttpURLConnection) url.openConnection();
            try {
                httpURLConnection2.setRequestMethod("POST");
                httpURLConnection2.setRequestProperty(MIME.CONTENT_TYPE, "multipart/form-data; boundary=---------------------------7d273f7a0d3");
                httpURLConnection2.setRequestProperty("Host", DEFAULT_API_HOST);
                httpURLConnection2.setDoInput(true);
                httpURLConnection2.setDoOutput(true);
                httpURLConnection2.setChunkedStreamingMode(1024);
                httpURLConnection2.setConnectTimeout(SmbConstants.DEFAULT_RESPONSE_TIMEOUT);
                httpURLConnection2.setReadTimeout(SmbConstants.DEFAULT_RESPONSE_TIMEOUT);
                httpURLConnection2.connect();
                dataOutputStream2 = new DataOutputStream(httpURLConnection2.getOutputStream());
            } catch (Throwable th) {
                dataOutputStream = null;
                httpURLConnection = httpURLConnection2;
                th = th;
            }
            try {
                String str = "-----------------------------7d273f7a0d3";
                dataOutputStream2.writeBytes(str);
                Iterator<a> it = list.iterator();
                while (it.hasNext()) {
                    writeParam(it.next(), dataOutputStream2, str);
                }
                dataOutputStream2.writeBytes("--\r\n\r\n");
                dataOutputStream2.flush();
                dataOutputStream2.close();
                try {
                    responseCode = httpURLConnection2.getResponseCode();
                } catch (IOException e) {
                    responseCode = httpURLConnection2.getErrorStream() != null ? httpURLConnection2.getResponseCode() : 200;
                }
                if (responseCode != 200) {
                    throw new IOException("Connection Failed. Response Code: " + responseCode + ", Response Message: " + httpURLConnection2.getResponseMessage() + ", Error: " + OAuthUtil.readFromStream(httpURLConnection2.getErrorStream()));
                }
                com.gmail.yuyang226.flickr.c.b bVar = new com.gmail.yuyang226.flickr.c.b();
                try {
                    bVar.a(DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(httpURLConnection2.getInputStream()));
                    com.gmail.yuyang226.flickr.d.b.a(dataOutputStream2);
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return bVar;
                } catch (IOException e2) {
                    throw new IOException("The server has error. " + e2.getMessage());
                }
            } catch (Throwable th2) {
                httpURLConnection = httpURLConnection2;
                th = th2;
                dataOutputStream = dataOutputStream2;
                com.gmail.yuyang226.flickr.d.b.a(dataOutputStream);
                if (httpURLConnection == null) {
                    throw th;
                }
                httpURLConnection.disconnect();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream = null;
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public void setConfigDir(String str, String str2) {
        this.storePath = str;
        this.private_storePath = str2;
        FlickrFileSystemCache.setPath(str);
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void setMeta(String str, String str2, String str3, String str4, String str5) {
        try {
            FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null) {
                Log.e("Flickr", "can't get cache entry for set meta");
                return;
            }
            if (getTokenString(str, str2) == null) {
                Log.e("Flickr", "delete, can't get the token");
                return;
            }
            ArrayList arrayList = new ArrayList();
            if (cacheEntry.isDir == 1) {
                arrayList.add(new a(KEY_METHOD, METHOD_EDIT_META_OF_PHOTOSET));
            } else {
                arrayList.add(new a(KEY_METHOD, METHOD_SET_META));
            }
            arrayList.add(new a("oauth_consumer_key", apiKey));
            if (cacheEntry.isDir == 1) {
                arrayList.add(new a("photoset_id", cacheEntry.url_id));
            } else {
                arrayList.add(new a("photo_id", cacheEntry.url_id));
            }
            arrayList.add(new a("title", str4));
            if (str5 != null) {
                arrayList.add(new a("description", str5));
            }
            addOAuthToken(arrayList, str);
            c postJSON = postJSON(sharedSecret, arrayList, str);
            if (postJSON.b()) {
                throw new FlickrException(postJSON.c(), postJSON.d());
            }
        } catch (Exception e) {
            throw new PhotoInfoException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void setPerms(String str, String str2, String str3, TypedMap typedMap) {
        try {
            FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null) {
                Log.e("Flickr", "can't get cache entry for set permissions");
                return;
            }
            if (getTokenString(str, str2) == null) {
                Log.e("Flickr", "delete, can't get the token");
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(new a(KEY_METHOD, METHOD_SET_PERMS));
            arrayList.add(new a("oauth_consumer_key", apiKey));
            arrayList.add(new a("photo_id", cacheEntry.url_id));
            arrayList.add(new a("is_public", typedMap.getBoolean("is_public") ? "1" : "0"));
            arrayList.add(new a("is_friend", typedMap.getBoolean("is_friend") ? "1" : "0"));
            arrayList.add(new a("is_family", typedMap.getBoolean("is_family") ? "1" : "0"));
            addOAuthToken(arrayList, str);
            c postJSON = postJSON(sharedSecret, arrayList, str);
            if (postJSON.b()) {
                throw new FlickrException(postJSON.c(), postJSON.d());
            }
        } catch (Exception e) {
            throw new PhotoInfoException(e);
        }
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public void setPrivateContent(String str, String str2, Object obj) {
        this.locale = (String) obj;
    }

    @Override // com.estrongs.android.pop.spfs.note.IPhotoInfo
    public void setTags(String str, String str2, String str3, String str4) {
        try {
            FlickrFileSystemCache.FlickrFileCacheEntry cacheEntry = getCacheEntry(str, str3);
            if (cacheEntry == null) {
                Log.e("Flickr", "can't get cache entry for set tags");
                return;
            }
            if (getTokenString(str, str2) == null) {
                Log.e("Flickr", "delete, can't get the token");
                return;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(new a(KEY_METHOD, METHOD_SET_TAGS));
            arrayList.add(new a("oauth_consumer_key", apiKey));
            arrayList.add(new a("photo_id", cacheEntry.url_id));
            arrayList.add(new a("tags", str4));
            addOAuthToken(arrayList, str);
            c postJSON = postJSON(sharedSecret, arrayList, str);
            if (postJSON.b()) {
                throw new FlickrException(postJSON.c(), postJSON.d());
            }
        } catch (Exception e) {
            throw new PhotoInfoException(e);
        }
    }
}

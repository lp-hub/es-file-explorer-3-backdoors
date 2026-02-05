package com.estrongs.android.pop.spfs;

import com.estrongs.android.pop.netfs.INetRefreshCallback;
import com.estrongs.android.util.TypedMap;
import com.gmail.yuyang226.flickr.a;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public interface ISPFileSystem {
    public static final String PARAMETER_ALBUMS_SELECTED = "albums_selected";
    public static final String PARAMETER_ALBUM_NEW = "albums_new";
    public static final String PARAMETER_DESCRIPTION = "description";
    public static final String PARAMETER_SETS = "sets";
    public static final String PARAMETER_SETS_DELETE = "sets_delete";
    public static final String PARAMETER_TAGS = "tags";
    public static final String PARAMETER_TITLE = "title";
    public static final String PRIVACY_IS_FAMILY = "is_family";
    public static final String PRIVACY_IS_FRIEND = "is_friend";
    public static final String PRIVACY_IS_PUBLIC = "is_public";
    public static final int REG_ERROR = 100;
    public static final int REG_NAME_EXISTED = 2;
    public static final int REG_SUCCESS = 0;
    public static final int REG_WRONG_VERF_CODE = 1;

    boolean addServer(String str, String str2);

    boolean copyFile(String str, String str2, String str3, String str4);

    boolean createFile(String str, String str2, String str3, boolean z);

    void delServer(String str, String str2);

    boolean deleteFile(String str, String str2, String str3);

    boolean exists(String str, String str2, String str3);

    List<a> getAccessTokenParameters(String str, String str2, String str3);

    URL getAccessTokenUrl();

    SPFileInfo getFileInfo(String str, String str2, String str3);

    InputStream getFileInputStream(String str, String str2, String str3, long j);

    long getFileLength(String str, String str2, String str3);

    OutputStream getFileOutputStream(String str, String str2, String str3, long j, TypedMap typedMap);

    String getLastErrorString(String str);

    String getOAuthLoginUrl(String str);

    String getOAuthVersion();

    String getPhotoExtension(String str, String str2, String str3);

    boolean getRegisterPrepareInfo(Object[] objArr);

    URL getRequestTokenUrl();

    InputStream getThumbnail(String str, String str2, String str3);

    String getUserLoginName(String str);

    boolean isDir(String str, String str2, String str3);

    Map<String, SPFileInfo> listFiles(String str, String str2, String str3, boolean z, INetRefreshCallback iNetRefreshCallback, TypedMap typedMap);

    boolean mkDirs(String str, String str2, String str3);

    boolean moveFile(String str, String str2, String str3, String str4);

    int register(String str, String str2, Object[] objArr);

    boolean renameFile(String str, String str2, String str3, String str4);

    void saveUserAndToken(String str, String str2, String str3, String str4);

    void setConfigDir(String str, String str2);

    void setPrivateContent(String str, String str2, Object obj);
}

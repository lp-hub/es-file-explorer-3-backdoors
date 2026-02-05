package com.estrongs.android.pop.netfs;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public interface INetFileSystem {
    public static final String LIST_FINISHED = "loadFinished";
    public static final String LIST_LIMIT = "limit";
    public static final String LIST_OFFSET = "offset";
    public static final int REG_ERROR = 100;
    public static final int REG_NAME_EXISTED = 2;
    public static final int REG_SUCCESS = 0;
    public static final int REG_WRONG_VERF_CODE = 1;

    boolean addServer(String str, String str2);

    boolean copyFile(String str, String str2, String str3, String str4);

    boolean createFile(String str, String str2, String str3, boolean z);

    String createShare(String str, String str2, String str3, HashMap<String, Object> hashMap);

    void delServer(String str, String str2);

    boolean deleteFile(String str, String str2, String str3);

    boolean exists(String str, String str2, String str3, boolean z);

    NetFileInfo getFileInfo(String str, String str2, String str3, boolean z);

    InputStream getFileInputStream(String str, String str2, String str3, long j);

    long getFileLength(String str, String str2, String str3);

    OutputStream getFileOutputStream(String str, String str2, String str3, long j, boolean z);

    String getLastErrorString(String str);

    long getLeftSpaceSize(String str, String str2, String str3);

    String getOAuthLoginUrl();

    boolean getRegisterPrepareInfo(Object[] objArr);

    InputStream getThumbnail(String str, String str2, String str3);

    String getUserLoginName(String str);

    boolean isDir(String str, String str2, String str3);

    boolean isPagingSupported();

    Map<String, NetFileInfo> listFiles(String str, String str2, String str3, boolean z, INetRefreshCallback iNetRefreshCallback, HashMap<String, Object> hashMap);

    boolean mkDirs(String str, String str2, String str3);

    boolean moveFile(String str, String str2, String str3, String str4);

    int register(String str, String str2, Object[] objArr);

    boolean removeShare(String str, String str2, String str3, HashMap<String, Object> hashMap);

    boolean renameFile(String str, String str2, String str3, String str4);

    void setConfigDir(String str, String str2);

    void setPrivateContent(String str, String str2, Object obj);
}

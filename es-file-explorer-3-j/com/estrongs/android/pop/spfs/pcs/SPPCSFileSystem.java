package com.estrongs.android.pop.spfs.pcs;

import com.estrongs.android.pop.netfs.INetFileSystem;
import com.estrongs.android.pop.netfs.INetRefreshCallback;
import com.estrongs.android.pop.netfs.NetFileInfo;
import com.estrongs.android.pop.spfs.ISPFileSystem;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.util.TypedMap;
import com.estrongs.fs.impl.i.b;
import com.estrongs.fs.impl.pcs.PcsFileSystem;
import com.gmail.yuyang226.flickr.a;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class SPPCSFileSystem implements ISPFileSystem {
    private String replacePath(String str) {
        return str;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean addServer(String str, String str2) {
        return false;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean copyFile(String str, String str2, String str3, String str4) {
        return false;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean createFile(String str, String str2, String str3, boolean z) {
        return false;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public void delServer(String str, String str2) {
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean deleteFile(String str, String str2, String str3) {
        return b.a("pcs").deleteFile(str, str2, replacePath(str3));
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean exists(String str, String str2, String str3) {
        return b.a("pcs").exists(str, str2, replacePath(str3), false);
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public List<a> getAccessTokenParameters(String str, String str2, String str3) {
        return null;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public URL getAccessTokenUrl() {
        return null;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public SPFileInfo getFileInfo(String str, String str2, String str3) {
        NetFileInfo fileInfo = b.a("pcs").getFileInfo(str, str2, replacePath(str3), false);
        if (fileInfo == null) {
            return null;
        }
        SPFileInfo sPFileInfo = new SPFileInfo();
        sPFileInfo.path = fileInfo.path;
        sPFileInfo.name = fileInfo.name;
        sPFileInfo.size = fileInfo.size;
        sPFileInfo.isDirectory = fileInfo.isDirectory;
        sPFileInfo.lastModifiedTime = fileInfo.lastModifiedTime;
        return sPFileInfo;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public InputStream getFileInputStream(String str, String str2, String str3, long j) {
        return b.a("pcs").getFileInputStream(str, str2, replacePath(str3), j);
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public long getFileLength(String str, String str2, String str3) {
        return 0L;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public OutputStream getFileOutputStream(String str, String str2, String str3, long j, TypedMap typedMap) {
        String replacePath = replacePath(str3);
        if (!replacePath.startsWith("/pictures")) {
            replacePath = "/pictures" + replacePath;
        }
        return b.a("pcs").getFileOutputStream(str, str2, replacePath, j, false);
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public String getLastErrorString(String str) {
        return null;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public String getOAuthLoginUrl(String str) {
        return null;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public String getOAuthVersion() {
        return null;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public String getPhotoExtension(String str, String str2, String str3) {
        return "";
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
        return ((PcsFileSystem) b.a("pcs")).a(str, str2, replacePath(str3), 228, 228);
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public String getUserLoginName(String str) {
        return null;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean isDir(String str, String str2, String str3) {
        return false;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public Map<String, SPFileInfo> listFiles(String str, String str2, String str3, boolean z, INetRefreshCallback iNetRefreshCallback, TypedMap typedMap) {
        INetFileSystem a2 = b.a("pcs");
        String replacePath = replacePath(str3);
        int i = typedMap.getInt("per_page", 10L);
        int i2 = typedMap.getInt("page", 1L);
        typedMap.put(INetFileSystem.LIST_LIMIT, Integer.valueOf(i));
        typedMap.put(INetFileSystem.LIST_OFFSET, Integer.valueOf(i * (i2 - 1)));
        Map<String, NetFileInfo> listFiles = a2.listFiles(str, str2, replacePath, z, iNetRefreshCallback, typedMap);
        if (listFiles == null) {
            return null;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str4 : listFiles.keySet()) {
            NetFileInfo netFileInfo = listFiles.get(str4);
            SPFileInfo sPFileInfo = new SPFileInfo();
            sPFileInfo.path = netFileInfo.path;
            sPFileInfo.name = netFileInfo.name;
            sPFileInfo.lastModifiedTime = netFileInfo.lastModifiedTime;
            sPFileInfo.readable = netFileInfo.readable;
            sPFileInfo.writable = netFileInfo.writable;
            sPFileInfo.hidden = netFileInfo.hidden;
            sPFileInfo.isDirectory = netFileInfo.isDirectory;
            sPFileInfo.size = netFileInfo.size;
            sPFileInfo.folder_type = netFileInfo.folder_type;
            sPFileInfo.md5_block_size = netFileInfo.md5_block_size;
            sPFileInfo.md5s = netFileInfo.md5s;
            linkedHashMap.put(str4, sPFileInfo);
        }
        return linkedHashMap;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean mkDirs(String str, String str2, String str3) {
        return false;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean moveFile(String str, String str2, String str3, String str4) {
        return false;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public int register(String str, String str2, Object[] objArr) {
        return 0;
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public boolean renameFile(String str, String str2, String str3, String str4) {
        return b.a("pcs").renameFile(str, str2, replacePath(str3), replacePath(str4));
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public void saveUserAndToken(String str, String str2, String str3, String str4) {
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public void setConfigDir(String str, String str2) {
    }

    @Override // com.estrongs.android.pop.spfs.ISPFileSystem
    public void setPrivateContent(String str, String str2, Object obj) {
    }
}

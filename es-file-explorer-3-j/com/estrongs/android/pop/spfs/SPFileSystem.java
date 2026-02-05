package com.estrongs.android.pop.spfs;

import android.content.Context;
import android.content.ContextWrapper;
import android.util.Log;
import com.estrongs.android.d.f;
import com.estrongs.android.pop.netfs.INetRefreshCallback;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.spfs.note.IPhotoInfo;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.av;
import com.estrongs.android.util.aw;
import com.estrongs.android.util.i;
import com.estrongs.fs.c;
import com.estrongs.fs.g;
import com.estrongs.fs.h;
import com.gmail.yuyang226.flickr.a.a;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class SPFileSystem {
    private static final String TAG = "SPFileSystem";
    private static String netfs_cfg_path = null;
    private static String private_cfg_path = null;
    private static HashMap<String, ISPFileSystem> netfs = new HashMap<>();
    private static HashMap<String, String> netfsName = new HashMap<>();

    /* loaded from: classes.dex */
    public class CacheRefreshCallback implements INetRefreshCallback {
        private String fullpath = null;

        @Override // com.estrongs.android.pop.netfs.INetRefreshCallback
        public void operation_end(Object obj) {
        }

        @Override // com.estrongs.android.pop.netfs.INetRefreshCallback
        public void operation_start() {
        }

        public void setPath(String str) {
            this.fullpath = str;
        }
    }

    static {
        netfsName.put("Flickr", "com.estrongs.android.pop.spfs.flickr.FlickrFileSystem");
        netfsName.put("Instagram", "com.estrongs.android.pop.spfs.instagram.InstagramFileSystem");
        netfsName.put("Facebook", "com.estrongs.android.pop.spfs.facebook.FacebookFileSystem");
        netfsName.put("pcs", "com.estrongs.android.pop.spfs.pcs.SPPCSFileSystem");
    }

    public static String addComment(String str, String str2) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return null;
            }
            return ((IPhotoInfo) fileSystem).addComment(ak.ab(str), ak.ad(str), getRealPathFromPath(str), str2);
        } catch (NetFsException e) {
            throw new PhotoInfoException(e);
        }
    }

    public static a addNote(String str, a aVar) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return null;
            }
            return ((IPhotoInfo) fileSystem).addNote(ak.ab(str), ak.ad(str), getRealPathFromPath(str), aVar);
        } catch (NetFsException e) {
            throw new PhotoInfoException(e);
        }
    }

    public static void addPhoto(String str, String str2) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return;
            }
            ((IPhotoInfo) fileSystem).addPhoto(ak.ab(str), ak.ad(str), getRealPathFromPath(str), str2);
        } catch (NetFsException e) {
            throw new AlbumException(e);
        }
    }

    public static boolean authenticate(String str) {
        ISPFileSystem fileSystem = getFileSystem(ak.af(str));
        if (fileSystem == null) {
            return false;
        }
        String ab = ak.ab(str);
        String ad = ak.ad(str);
        getRealPathFromPath(str);
        return fileSystem.addServer(ab, ad);
    }

    private static c convertToFileInfo(SPFileInfo sPFileInfo) {
        c cVar = new c(sPFileInfo.path);
        cVar.o = sPFileInfo.name;
        cVar.d = sPFileInfo.isDirectory;
        cVar.k = sPFileInfo.readable;
        cVar.l = sPFileInfo.writable;
        cVar.m = sPFileInfo.hidden;
        cVar.j = sPFileInfo.lastModifiedTime;
        cVar.e = sPFileInfo.size;
        return cVar;
    }

    public static boolean copyFile(String str, String str2) {
        ISPFileSystem fileSystem = getFileSystem(ak.af(str));
        if (fileSystem == null) {
            return false;
        }
        return fileSystem.copyFile(ak.ab(str), ak.ad(str), getRealPathFromPath(str), getRealPathFromPath(str2));
    }

    public static Album createAlbum(String str, String str2, String str3) {
        ISPFileSystem fileSystem = getFileSystem(ak.af(str3));
        if (fileSystem == null) {
            return null;
        }
        return ((IPhotoInfo) fileSystem).createAlbum(ak.ab(str3), str, str2, com.estrongs.fs.a.a.b(str3));
    }

    public static boolean createFile(String str, boolean z) {
        ISPFileSystem fileSystem = getFileSystem(ak.af(str));
        if (fileSystem == null) {
            return false;
        }
        return fileSystem.createFile(ak.ab(str), ak.ad(str), getRealPathFromPath(str), z);
    }

    public static boolean createThumbnail(Context context, String str) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return false;
            }
            String ab = ak.ab(str);
            String ad = ak.ad(str);
            String realPathFromPath = getRealPathFromPath(str);
            f a2 = f.a((ContextWrapper) context);
            if (av.b(str)) {
                a2.a(str, fileSystem.getThumbnail(ab, ad, realPathFromPath));
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void delServer(String str) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return;
            }
            fileSystem.delServer(ak.ab(str), ak.ad(str));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteComment(String str, String str2) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return;
            }
            ((IPhotoInfo) fileSystem).deleteComment(ak.ab(str), ak.ad(str), getRealPathFromPath(str), str2);
        } catch (NetFsException e) {
            throw new PhotoInfoException(e);
        }
    }

    public static boolean deleteFile(String str, long j) {
        ISPFileSystem fileSystem = getFileSystem(ak.af(str));
        if (fileSystem == null) {
            return false;
        }
        return fileSystem.deleteFile(ak.ab(str), ak.ad(str), getRealPathFromPath(str));
    }

    public static void deleteNote(String str, String str2) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return;
            }
            String ab = ak.ab(str);
            String ad = ak.ad(str);
            getRealPathFromPath(str);
            ((IPhotoInfo) fileSystem).deleteNote(ab, ad, str2);
        } catch (NetFsException e) {
            throw new PhotoInfoException(e);
        }
    }

    public static void editComment(String str, String str2, String str3) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return;
            }
            String ab = ak.ab(str);
            String ad = ak.ad(str);
            getRealPathFromPath(str);
            ((IPhotoInfo) fileSystem).editComment(ab, ad, str2, str3);
        } catch (NetFsException e) {
            throw new PhotoInfoException(e);
        }
    }

    public static void editNote(String str, a aVar) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return;
            }
            String ab = ak.ab(str);
            String ad = ak.ad(str);
            getRealPathFromPath(str);
            ((IPhotoInfo) fileSystem).editNote(ab, ad, aVar);
        } catch (NetFsException e) {
            throw new PhotoInfoException(e);
        }
    }

    public static boolean exists(String str) {
        ISPFileSystem fileSystem = getFileSystem(ak.af(str));
        if (fileSystem == null) {
            return false;
        }
        return fileSystem.exists(ak.ab(str), ak.ad(str), getRealPathFromPath(str));
    }

    public static List<com.gmail.yuyang226.flickr.a> getAccessTokenParameters(String str, String str2, String str3, String str4) {
        try {
            ISPFileSystem fileSystem = getFileSystem(str);
            if (fileSystem == null) {
                return null;
            }
            return fileSystem.getAccessTokenParameters(str2, str3, str4);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static URL getAccessTokenUrl(String str) {
        try {
            ISPFileSystem fileSystem = getFileSystem(str);
            if (fileSystem == null) {
                return null;
            }
            return fileSystem.getAccessTokenUrl();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static List<Album> getAlbums(String str) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return null;
            }
            List<Album> albums = ((IPhotoInfo) fileSystem).getAlbums(ak.ab(str), ak.ad(str), getRealPathFromPath(str));
            String str2 = com.estrongs.fs.a.a.a(com.estrongs.fs.a.a.c(str), 1) + "/album";
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= albums.size()) {
                    return albums;
                }
                albums.get(i2).path = str2 + "/" + albums.get(i2).id;
                i = i2 + 1;
            }
        } catch (NetFsException e) {
            throw new AlbumException(e);
        }
    }

    public static List<Album> getAllAlbums(String str) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return null;
            }
            String ab = ak.ab(str);
            String ad = ak.ad(str);
            getRealPathFromPath(str);
            List<Album> allAlbums = ((IPhotoInfo) fileSystem).getAllAlbums(ab, ad);
            String str2 = com.estrongs.fs.a.a.a(com.estrongs.fs.a.a.c(str), 1) + "/album";
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= allAlbums.size()) {
                    return allAlbums;
                }
                allAlbums.get(i2).path = str2 + "/" + allAlbums.get(i2).id;
                i = i2 + 1;
            }
        } catch (NetFsException e) {
            throw new AlbumException(e);
        }
    }

    public static String getBuddyIcon(String str, String str2) {
        ISPFileSystem fileSystem = getFileSystem(ak.af(str));
        if (fileSystem == null) {
            return null;
        }
        return ((IPhotoInfo) fileSystem).getBuddyIcon(ak.ab(str), str2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static List<com.gmail.yuyang226.flickr.a.a.a> getComments(String str, TypedMap typedMap) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return null;
            }
            return ((IPhotoInfo) fileSystem).getComments(ak.ab(str), ak.ad(str), getRealPathFromPath(str), typedMap);
        } catch (NetFsException e) {
            throw new PhotoInfoException(e);
        }
    }

    public static c getFileInfo(String str) {
        SPFileInfo netFileInfo = getNetFileInfo(str);
        if (netFileInfo == null) {
            return null;
        }
        return convertToFileInfo(netFileInfo);
    }

    public static InputStream getFileInputStream(String str) {
        return getFileInputStream(str, 0L);
    }

    public static InputStream getFileInputStream(String str, long j) {
        ISPFileSystem fileSystem = getFileSystem(ak.af(str));
        if (fileSystem == null) {
            return null;
        }
        return fileSystem.getFileInputStream(ak.ab(str), ak.ad(str), getRealPathFromPath(str), j);
    }

    public static long getFileLength(String str) {
        ISPFileSystem fileSystem = getFileSystem(ak.af(str));
        if (fileSystem == null) {
            return -1L;
        }
        return fileSystem.getFileLength(ak.ab(str), ak.ad(str), getRealPathFromPath(str));
    }

    public static SPFileObject getFileObject(String str) {
        try {
            SPFileInfo netFileInfo = getNetFileInfo(str);
            if (netFileInfo == null) {
                return null;
            }
            return new SPFileObject(netFileInfo);
        } catch (Exception e) {
            return null;
        }
    }

    public static OutputStream getFileOutputStream(String str, long j, TypedMap typedMap) {
        ISPFileSystem fileSystem = getFileSystem(ak.af(str));
        if (fileSystem == null) {
            return null;
        }
        return fileSystem.getFileOutputStream(ak.ab(str), ak.ad(str), getRealPathFromPath(str), j, typedMap);
    }

    private static ISPFileSystem getFileSystem(Context context, String str) {
        ISPFileSystem iSPFileSystem = netfs.get(str);
        String str2 = netfsName.get(str);
        if (str2 == null) {
            return null;
        }
        if (iSPFileSystem != null) {
            return iSPFileSystem;
        }
        ISPFileSystem iSPFileSystem2 = (ISPFileSystem) i.a(SPFileSystem.class.getClassLoader(), str2, (Object[]) null);
        if (iSPFileSystem2 == null) {
            return iSPFileSystem2;
        }
        synchronized (netfs) {
            netfs.put(str, iSPFileSystem2);
        }
        iSPFileSystem2.setConfigDir(netfs_cfg_path, private_cfg_path);
        return iSPFileSystem2;
    }

    private static ISPFileSystem getFileSystem(String str) {
        return getFileSystem(null, str);
    }

    public static String getLastErrorString(String str) {
        ISPFileSystem fileSystem = getFileSystem(ak.af(str));
        if (fileSystem == null) {
            return null;
        }
        try {
            return fileSystem.getLastErrorString(str);
        } catch (Exception e) {
            return null;
        }
    }

    public static SPFileInfo getNetFileInfo(String str) {
        SPFileInfo fileInfo;
        ISPFileSystem fileSystem = getFileSystem(ak.af(str));
        if (fileSystem == null || (fileInfo = fileSystem.getFileInfo(ak.ab(str), ak.ad(str), getRealPathFromPath(str))) == null) {
            return null;
        }
        fileInfo.path = str;
        return fileInfo;
    }

    public static String getOAuthLoginUrl(String str, String str2) {
        try {
            ISPFileSystem fileSystem = getFileSystem(str);
            if (fileSystem == null) {
                return null;
            }
            return fileSystem.getOAuthLoginUrl(str2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getOAuthVersion(String str) {
        try {
            ISPFileSystem fileSystem = getFileSystem(str);
            if (fileSystem == null) {
                return null;
            }
            return fileSystem.getOAuthVersion();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getPhotoExtension(String str) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return null;
            }
            return fileSystem.getPhotoExtension(ak.ab(str), ak.ad(str), getRealPathFromPath(str));
        } catch (NetFsException e) {
            throw new PhotoInfoException(e);
        }
    }

    public static SPFileInfo getPhotoInfo(String str) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return null;
            }
            return ((IPhotoInfo) fileSystem).getPhotoInfo(ak.ab(str), ak.ad(str), getRealPathFromPath(str));
        } catch (NetFsException e) {
            throw new PhotoInfoException(e);
        }
    }

    private static String getRealPathFromPath(String str) {
        String Z = ak.Z(str);
        if (Z == null) {
            return null;
        }
        return Z;
    }

    public static boolean getRegisterPrepareInfo(String str, Object[] objArr) {
        try {
            ISPFileSystem fileSystem = getFileSystem(str);
            if (fileSystem == null) {
                return false;
            }
            return fileSystem.getRegisterPrepareInfo(objArr);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static URL getRequestTokenUrl(String str) {
        try {
            ISPFileSystem fileSystem = getFileSystem(str);
            if (fileSystem == null) {
                return null;
            }
            return fileSystem.getRequestTokenUrl();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static InputStream getThumbnail(String str) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return null;
            }
            return fileSystem.getThumbnail(ak.ab(str), ak.ad(str), getRealPathFromPath(str));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String getUserLoginName(String str, String str2) {
        try {
            ISPFileSystem fileSystem = getFileSystem(str);
            if (fileSystem == null) {
                return null;
            }
            return fileSystem.getUserLoginName(str2);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static boolean isDir(String str) {
        ISPFileSystem fileSystem = getFileSystem(ak.af(str));
        if (fileSystem == null) {
            return false;
        }
        return fileSystem.isDir(ak.ab(str), ak.ad(str), getRealPathFromPath(str));
    }

    public static List<g> listFiles(Context context, String str, boolean z, h hVar, TypedMap typedMap) {
        ArrayList arrayList;
        String ab = ak.ab(str);
        String ad = ak.ad(str);
        String realPathFromPath = getRealPathFromPath(str);
        String af = ak.af(str);
        if (ab == null || ad == null || realPathFromPath == null) {
            throw new NetFsException("MalFormed URL", NetFsException.ERROR_CODE.NETFS_ERROR_MALFORMED_URL);
        }
        ISPFileSystem fileSystem = getFileSystem(context, af);
        if (fileSystem == null) {
            return null;
        }
        try {
            CacheRefreshCallback cacheRefreshCallback = new CacheRefreshCallback();
            cacheRefreshCallback.setPath(str);
            Map<String, SPFileInfo> listFiles = fileSystem.listFiles(ab, ad, realPathFromPath, z, cacheRefreshCallback, typedMap);
            if (listFiles == null) {
                return null;
            }
            Set<Map.Entry<String, SPFileInfo>> entrySet = listFiles.entrySet();
            if (entrySet != null) {
                ArrayList arrayList2 = new ArrayList();
                Iterator<Map.Entry<String, SPFileInfo>> it = entrySet.iterator();
                while (it.hasNext()) {
                    SPFileInfo value = it.next().getValue();
                    value.path = ak.b(af, ab, ad, value.path);
                    SPFileObject sPFileObject = new SPFileObject(value);
                    if (hVar.a(sPFileObject)) {
                        if (!aw.a((CharSequence) value.thumbnail_url)) {
                            sPFileObject.putExtra("thumbnail_url", value.thumbnail_url);
                        }
                        arrayList2.add(sPFileObject);
                    }
                }
                arrayList = arrayList2;
            } else {
                arrayList = null;
            }
            return arrayList;
        } catch (NetFsException e) {
            throw e;
        }
    }

    public static void loadFileSystem(String str) {
        if (getFileSystem(str) == null) {
            Log.e(TAG, "can't load fs for :" + str);
            throw new NetFsException("Not installed", NetFsException.ERROR_CODE.NETFS_ERROR_NOT_INSTALLED);
        }
    }

    public static boolean mkDirs(String str) {
        return createFile(str, true);
    }

    public static boolean moveFile(String str, String str2) {
        ISPFileSystem fileSystem = getFileSystem(ak.af(str));
        if (fileSystem == null) {
            return false;
        }
        return fileSystem.moveFile(ak.ab(str), ak.ad(str), getRealPathFromPath(str), getRealPathFromPath(str2));
    }

    private static void refreshUI(String str) {
    }

    public static int register(String str, String str2, String str3, Object[] objArr) {
        ISPFileSystem fileSystem = getFileSystem(ak.af(str));
        if (fileSystem == null) {
            return 100;
        }
        try {
            return fileSystem.register(str2, str3, objArr);
        } catch (Exception e) {
            e.printStackTrace();
            return 100;
        }
    }

    public static void removePhoto(String str, String str2) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return;
            }
            ((IPhotoInfo) fileSystem).removePhoto(ak.ab(str), ak.ad(str), getRealPathFromPath(str), str2);
        } catch (NetFsException e) {
            throw new AlbumException(e);
        }
    }

    public static boolean renameFile(String str, String str2) {
        ISPFileSystem fileSystem = getFileSystem(ak.af(str));
        if (fileSystem == null) {
            return false;
        }
        return fileSystem.renameFile(ak.ab(str), ak.ad(str), getRealPathFromPath(str), getRealPathFromPath(str2));
    }

    public static void saveUsernameAndToken(String str, String str2, String str3, String str4, String str5) {
        try {
            ISPFileSystem fileSystem = getFileSystem(str);
            if (fileSystem == null) {
                return;
            }
            fileSystem.saveUserAndToken(str2, str3, str4, str5);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void setMeta(String str, String str2, String str3) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return;
            }
            ((IPhotoInfo) fileSystem).setMeta(ak.ab(str), ak.ad(str), getRealPathFromPath(str), str2, str3);
        } catch (NetFsException e) {
            throw new PhotoInfoException(e);
        }
    }

    public static void setPath(String str, String str2) {
        netfs_cfg_path = str;
        private_cfg_path = str2;
    }

    public static void setPerms(String str, TypedMap typedMap) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return;
            }
            ((IPhotoInfo) fileSystem).setPerms(ak.ab(str), ak.ad(str), getRealPathFromPath(str), typedMap);
        } catch (NetFsException e) {
            throw new PhotoInfoException(e);
        }
    }

    public static void setTags(String str, String str2) {
        try {
            ISPFileSystem fileSystem = getFileSystem(ak.af(str));
            if (fileSystem == null) {
                return;
            }
            ((IPhotoInfo) fileSystem).setTags(ak.ab(str), ak.ad(str), getRealPathFromPath(str), str2);
        } catch (NetFsException e) {
            throw new PhotoInfoException(e);
        }
    }
}

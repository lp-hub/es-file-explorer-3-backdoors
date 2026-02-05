package com.estrongs.android.pop.spfs.facebook;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDiskIOException;
import com.gmail.yuyang226.flickr.a.a;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class FacebookFileSystemCache {
    private static final String COLUMN_CTIME = "checktime";
    private static final String COLUMN_DB_VERION = "dbver";
    private static final String COLUMN_DIR_TYPE = "dir_type";
    private static final String COLUMN_HASH = "hash";
    private static final String COLUMN_ID = "id";
    private static final String COLUMN_ISDIR = "isdir";
    private static final String COLUMN_MTIME = "mtime";
    private static final String COLUMN_NAME = "name";
    private static final String COLUMN_PATH = "path";
    private static final String COLUMN_PID = "parent_id";
    private static final String COLUMN_PRESENT = "present";
    private static final String COLUMN_SERVER = "server";
    private static final String COLUMN_SERVER_ID = "server_id";
    private static final String COLUMN_SIZE = "size";
    private static final String COLUMN_THUMBNAIL_URL = "thumbnail_url";
    private static final String COLUMN_URL = "url";
    private static final String COLUMN_URL_ID = "urlid";
    private static final int DB_VERSION = 1;
    private static final String dbname = "Instagram_cachedb";
    private static final String filecache_table = "file_cache";
    private static final String server_table = "server_id";
    private static final String version_table = "cachedb_version";
    private SQLiteDatabase db = null;
    private static String dbpath = null;
    private static FacebookFileSystemCache inst = null;
    private static HashMap<String, Integer> server_ids = new HashMap<>();

    /* loaded from: classes.dex */
    public class FacebookFileCacheEntry {
        public String description;
        public boolean familyFlag;
        public boolean friendFlag;
        public String name;
        public List<a> notes;
        public String ownerId;
        public String ownerUsername;
        public boolean publicFlag;
        public String tags;
        public int id = 0;
        public int serverId = 0;
        public int parentId = 0;
        public String path = null;
        public int isDir = 0;
        public String hash = null;
        public int mtime = 0;
        public int size = -1;
        public int checktime = 0;
        public int dir_type = 0;
        public int present = 0;
        public String url_id = null;
        public String url = null;
        public String thumbnail_url = null;
    }

    private FacebookFileSystemCache() {
    }

    private static void createFileCacheTables() {
        inst.db.execSQL("CREATE TABLE IF NOT EXISTS server_id (id INTEGER PRIMARY KEY,server TEXT UNIQUE)");
        inst.db.execSQL("CREATE TABLE IF NOT EXISTS file_cache (id INTEGER PRIMARY KEY,server_id INTEGER,path TEXT,name TEXT,isdir INTEGER,hash  TEXT,mtime  INTEGER,parent_id  INTEGER,checktime INTEGER,size INTEGER,dir_type TEXT,present INTEGER,urlid TEXT,url TEXT,thumbnail_url TEXT)");
        inst.db.execSQL("CREATE TABLE IF NOT EXISTS cachedb_version (dbver INTEGER UNIQUE)");
        updateDatabase(getDBVersion());
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0030, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int getDBVersion() {
        Cursor cursor;
        int i;
        try {
            try {
                cursor = inst.db.query(version_table, new String[]{COLUMN_DB_VERION}, null, null, null, null, null);
            } catch (Throwable th) {
                th = th;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Exception e) {
            e = e;
            cursor = null;
            e.printStackTrace();
            if (cursor != null) {
            }
            i = 0;
            return i;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
        if (cursor != null) {
            try {
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                if (cursor != null) {
                    cursor.close();
                }
                i = 0;
                return i;
            }
            if (cursor.getCount() != 0) {
                cursor.moveToFirst();
                i = cursor.getInt(0);
                if (cursor != null) {
                    cursor.close();
                }
                return i;
            }
        }
        inst.db.execSQL("INSERT INTO cachedb_version (dbver) values(1)");
        if (cursor != null) {
            cursor.close();
        }
        i = 0;
        return i;
    }

    public static synchronized FacebookFileSystemCache instance() {
        File file;
        FacebookFileSystemCache facebookFileSystemCache = null;
        synchronized (FacebookFileSystemCache.class) {
            if (inst == null) {
                if (dbpath == null) {
                    facebookFileSystemCache = new FacebookFileSystemCache();
                } else {
                    File file2 = new File(dbpath);
                    try {
                        try {
                            file = new File(dbpath);
                        } catch (SQLiteDiskIOException e) {
                            e = e;
                            file = file2;
                        }
                        try {
                            if (!file.exists()) {
                                file.mkdirs();
                            }
                            inst = new FacebookFileSystemCache();
                            inst.db = SQLiteDatabase.openOrCreateDatabase(dbpath + dbname, (SQLiteDatabase.CursorFactory) null);
                            if (inst.db == null) {
                                new File(dbpath + dbname).delete();
                                inst.db = SQLiteDatabase.openOrCreateDatabase(dbpath + dbname, (SQLiteDatabase.CursorFactory) null);
                                if (inst.db == null) {
                                    inst = null;
                                }
                            }
                            createFileCacheTables();
                        } catch (SQLiteDiskIOException e2) {
                            e = e2;
                            if (inst.db != null) {
                                inst.db.close();
                                inst.db = null;
                            }
                            inst = null;
                            file.delete();
                            e.printStackTrace();
                            facebookFileSystemCache = new FacebookFileSystemCache();
                            return facebookFileSystemCache;
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        facebookFileSystemCache = new FacebookFileSystemCache();
                    }
                }
            }
            facebookFileSystemCache = inst;
        }
        return facebookFileSystemCache;
    }

    private String qstring(String str) {
        return str == null ? "\"\"" : "\"" + str + "\"";
    }

    public static void setPath(String str) {
        dbpath = str + "/";
    }

    private static void updateDatabase(int i) {
    }

    public void addFile(FacebookFileCacheEntry facebookFileCacheEntry) {
        if (this.db == null || facebookFileCacheEntry == null || facebookFileCacheEntry.path == null) {
            return;
        }
        if (facebookFileCacheEntry.path.length() > 1 && facebookFileCacheEntry.path.endsWith("/")) {
            facebookFileCacheEntry.path = facebookFileCacheEntry.path.substring(0, facebookFileCacheEntry.path.length() - 1);
        }
        try {
            this.db.execSQL("INSERT INTO file_cache (server_id,path,name,isdir,hash,mtime,size,parent_id,checktime,dir_type,url,present,urlid,thumbnail_url) values(" + facebookFileCacheEntry.serverId + "," + qstring(facebookFileCacheEntry.path) + "," + qstring(facebookFileCacheEntry.name) + "," + facebookFileCacheEntry.isDir + "," + qstring(facebookFileCacheEntry.hash) + "," + facebookFileCacheEntry.mtime + "," + facebookFileCacheEntry.size + "," + facebookFileCacheEntry.parentId + "," + facebookFileCacheEntry.checktime + "," + facebookFileCacheEntry.dir_type + "," + qstring(facebookFileCacheEntry.url) + "," + facebookFileCacheEntry.present + "," + qstring(facebookFileCacheEntry.url_id) + "," + qstring(facebookFileCacheEntry.thumbnail_url) + ")");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void addServer(String str) {
        if (this.db == null) {
            return;
        }
        try {
            this.db.execSQL("INSERT INTO server_id (server) values(" + qstring(str) + ")");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int countSubFiles(int i, int i2) {
        return countSubsNumber(i, i2, "isdir=0");
    }

    public int countSubFolders(int i, int i2) {
        return countSubsNumber(i, i2, "isdir=1");
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0086: MOVE (r9 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:29:0x0086 */
    /* JADX WARN: Removed duplicated region for block: B:10:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int countSubsNumber(int i, int i2, String str) {
        Cursor cursor;
        Cursor cursor2;
        int count;
        Cursor cursor3 = null;
        try {
            try {
                cursor = this.db.query(filecache_table, new String[]{"id"}, "server_id=" + i + " AND " + str + " AND " + COLUMN_PID + "=" + i2, null, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.getCount() != 0) {
                            int i3 = 0;
                            for (boolean moveToFirst = cursor.moveToFirst(); moveToFirst; moveToFirst = cursor.moveToNext()) {
                                i3 += countSubsNumber(i, cursor.getInt(0), str);
                            }
                            count = cursor.getCount() + i3;
                            if (cursor != null) {
                                return count;
                            }
                            cursor.close();
                            return count;
                        }
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        if (cursor != null) {
                            cursor.close();
                        }
                        return 0;
                    }
                }
                count = 0;
                if (cursor != null) {
                }
            } catch (Throwable th) {
                th = th;
                cursor3 = cursor2;
                if (cursor3 != null) {
                    cursor3.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor3 != null) {
            }
            throw th;
        }
    }

    public void delServer(String str) {
        int serverId;
        if (this.db == null || (serverId = getServerId(str)) == 0) {
            return;
        }
        try {
            this.db.execSQL("DELETE FROM server_id WHERE id=" + serverId);
            this.db.execSQL("DELETE FROM file_cache WHERE server_id=" + serverId);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteEntry(int i, FacebookFileCacheEntry facebookFileCacheEntry, boolean z) {
        if (z) {
            this.db.execSQL("DELETE FROM file_cache WHERE server_id=" + i + " AND id=" + facebookFileCacheEntry.id);
        }
        if (facebookFileCacheEntry.isDir == 1) {
            HashMap<String, FacebookFileCacheEntry> listFile = listFile(i, facebookFileCacheEntry.id);
            this.db.execSQL("DELETE FROM file_cache WHERE server_id=" + i + " AND " + COLUMN_PID + "=" + facebookFileCacheEntry.id);
            if (listFile != null) {
                Iterator<Map.Entry<String, FacebookFileCacheEntry>> it = listFile.entrySet().iterator();
                while (it.hasNext()) {
                    FacebookFileCacheEntry value = it.next().getValue();
                    if (value.isDir == 1) {
                        deleteEntry(i, value, false);
                    }
                }
            }
        }
    }

    public void deleteFile(int i, String str) {
        FacebookFileCacheEntry file = getFile(i, str);
        if (file == null) {
            return;
        }
        deleteEntry(i, file, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0124  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FacebookFileCacheEntry getFile(int i, int i2) {
        Cursor cursor;
        Cursor cursor2 = null;
        if (this.db == null) {
            return null;
        }
        try {
            cursor = this.db.query(filecache_table, new String[]{COLUMN_PATH, COLUMN_PID, COLUMN_ISDIR, COLUMN_HASH, COLUMN_MTIME, COLUMN_SIZE, COLUMN_CTIME, COLUMN_DIR_TYPE, COLUMN_URL, COLUMN_PRESENT, COLUMN_URL_ID, COLUMN_THUMBNAIL_URL, COLUMN_NAME}, "server_id=" + i + " AND id=" + i2, null, null, null, null);
            if (cursor != null) {
                try {
                    try {
                        if (cursor.getCount() != 0) {
                            if (!cursor.moveToFirst()) {
                                if (cursor != null) {
                                    cursor.close();
                                }
                                return null;
                            }
                            FacebookFileCacheEntry facebookFileCacheEntry = new FacebookFileCacheEntry();
                            facebookFileCacheEntry.id = i2;
                            facebookFileCacheEntry.serverId = i;
                            facebookFileCacheEntry.path = cursor.getString(0);
                            facebookFileCacheEntry.parentId = cursor.getInt(1);
                            facebookFileCacheEntry.isDir = cursor.getInt(2);
                            facebookFileCacheEntry.hash = cursor.getString(3);
                            facebookFileCacheEntry.mtime = cursor.getInt(4);
                            facebookFileCacheEntry.size = cursor.getInt(5);
                            facebookFileCacheEntry.checktime = cursor.getInt(6);
                            facebookFileCacheEntry.dir_type = cursor.getInt(7);
                            facebookFileCacheEntry.url = cursor.getString(8);
                            facebookFileCacheEntry.present = cursor.getInt(9);
                            facebookFileCacheEntry.url_id = cursor.getString(10);
                            facebookFileCacheEntry.thumbnail_url = cursor.getString(11);
                            facebookFileCacheEntry.name = cursor.getString(12);
                            if (cursor == null) {
                                return facebookFileCacheEntry;
                            }
                            cursor.close();
                            return facebookFileCacheEntry;
                        }
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0134  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FacebookFileCacheEntry getFile(int i, String str) {
        Cursor cursor;
        Cursor cursor2 = null;
        if (this.db == null) {
            return null;
        }
        if (str.length() > 1 && str.endsWith("/")) {
            str = str.substring(0, str.length() - 1);
        }
        try {
            cursor = this.db.query(filecache_table, new String[]{"id", COLUMN_PID, COLUMN_ISDIR, COLUMN_HASH, COLUMN_MTIME, COLUMN_SIZE, COLUMN_CTIME, COLUMN_DIR_TYPE, COLUMN_URL, COLUMN_PRESENT, COLUMN_URL_ID, COLUMN_THUMBNAIL_URL}, "server_id=" + i + " AND " + COLUMN_PATH + "=" + qstring(str), null, null, null, null);
            if (cursor != null) {
                try {
                    try {
                        if (cursor.getCount() != 0) {
                            if (!cursor.moveToFirst()) {
                                if (cursor != null) {
                                    cursor.close();
                                }
                                return null;
                            }
                            FacebookFileCacheEntry facebookFileCacheEntry = new FacebookFileCacheEntry();
                            facebookFileCacheEntry.id = cursor.getInt(0);
                            facebookFileCacheEntry.serverId = i;
                            facebookFileCacheEntry.path = str;
                            facebookFileCacheEntry.parentId = cursor.getInt(1);
                            facebookFileCacheEntry.isDir = cursor.getInt(2);
                            facebookFileCacheEntry.hash = cursor.getString(3);
                            facebookFileCacheEntry.mtime = cursor.getInt(4);
                            facebookFileCacheEntry.size = cursor.getInt(5);
                            facebookFileCacheEntry.checktime = cursor.getInt(6);
                            facebookFileCacheEntry.dir_type = cursor.getInt(7);
                            facebookFileCacheEntry.url = cursor.getString(8);
                            facebookFileCacheEntry.present = cursor.getInt(9);
                            facebookFileCacheEntry.url_id = cursor.getString(10);
                            facebookFileCacheEntry.thumbnail_url = cursor.getString(11);
                            if (cursor == null) {
                                return facebookFileCacheEntry;
                            }
                            cursor.close();
                            return facebookFileCacheEntry;
                        }
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008f  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getPathId(int i, String str) {
        Cursor cursor;
        int i2;
        ?? r1 = 1;
        Cursor cursor2 = null;
        if (this.db == null) {
            return 0;
        }
        if (str.length() > 1 && str.endsWith("/")) {
            str = str.substring(0, str.length() - 1);
        }
        try {
            try {
                cursor = this.db.query(filecache_table, new String[]{"id"}, "server_id=" + i + " AND " + COLUMN_PATH + "=" + qstring(str), null, null, null, null);
            } catch (Throwable th) {
                th = th;
                cursor2 = r1;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (Exception e) {
            e = e;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
            }
            throw th;
        }
        if (cursor != null) {
            try {
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                if (cursor != null) {
                    cursor.close();
                }
                i2 = 0;
                r1 = cursor;
                return i2;
            }
            if (cursor.getCount() != 0) {
                cursor.moveToFirst();
                i2 = cursor.getInt(0);
                r1 = cursor;
                if (cursor != null) {
                    cursor.close();
                    r1 = cursor;
                }
                return i2;
            }
        }
        if (cursor != null) {
            cursor.close();
        }
        i2 = 0;
        r1 = cursor;
        return i2;
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0081: MOVE (r9 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:39:0x0081 */
    /* JADX WARN: Removed duplicated region for block: B:41:0x007c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getServerId(String str) {
        Cursor cursor;
        Cursor cursor2;
        Cursor cursor3 = null;
        if (this.db == null) {
            return 0;
        }
        Integer num = server_ids.get(str);
        if (num == null) {
            try {
                try {
                    cursor = this.db.query("server_id", new String[]{"id"}, "server=" + qstring(str), null, null, null, null);
                    if (cursor != null) {
                        try {
                            if (cursor.getCount() != 0) {
                                cursor.moveToFirst();
                                num = Integer.valueOf(cursor.getInt(0));
                                synchronized (server_ids) {
                                    server_ids.put(str, num);
                                }
                                if (cursor != null) {
                                    cursor.close();
                                }
                            }
                        } catch (Exception e) {
                            e = e;
                            e.printStackTrace();
                            if (cursor != null) {
                                cursor.close();
                            }
                            return 0;
                        }
                    }
                    if (cursor != null) {
                        cursor.close();
                    }
                    return 0;
                } catch (Throwable th) {
                    th = th;
                    cursor3 = cursor2;
                    if (cursor3 != null) {
                        cursor3.close();
                    }
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                cursor = null;
            } catch (Throwable th2) {
                th = th2;
                if (cursor3 != null) {
                }
                throw th;
            }
        }
        return num.intValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x012b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public HashMap<String, FacebookFileCacheEntry> listFile(int i, int i2) {
        Cursor cursor;
        Cursor cursor2 = null;
        if (this.db == null) {
            return null;
        }
        try {
            cursor = this.db.query(filecache_table, new String[]{"id", COLUMN_PATH, COLUMN_ISDIR, COLUMN_HASH, COLUMN_MTIME, COLUMN_SIZE, COLUMN_CTIME, COLUMN_DIR_TYPE, COLUMN_URL, COLUMN_PRESENT, COLUMN_URL_ID, COLUMN_THUMBNAIL_URL, COLUMN_NAME}, "server_id=" + i + " AND " + COLUMN_PID + "=" + i2, null, null, null, null);
            if (cursor != null) {
                try {
                    try {
                        if (cursor.getCount() != 0) {
                            HashMap<String, FacebookFileCacheEntry> hashMap = new HashMap<>();
                            for (boolean moveToFirst = cursor.moveToFirst(); moveToFirst; moveToFirst = cursor.moveToNext()) {
                                FacebookFileCacheEntry facebookFileCacheEntry = new FacebookFileCacheEntry();
                                facebookFileCacheEntry.id = cursor.getInt(0);
                                facebookFileCacheEntry.serverId = i;
                                facebookFileCacheEntry.parentId = i2;
                                facebookFileCacheEntry.path = cursor.getString(1);
                                facebookFileCacheEntry.isDir = cursor.getInt(2);
                                facebookFileCacheEntry.hash = cursor.getString(3);
                                facebookFileCacheEntry.mtime = cursor.getInt(4);
                                facebookFileCacheEntry.size = cursor.getInt(5);
                                facebookFileCacheEntry.checktime = cursor.getInt(6);
                                facebookFileCacheEntry.dir_type = cursor.getInt(7);
                                facebookFileCacheEntry.url = cursor.getString(8);
                                facebookFileCacheEntry.present = cursor.getInt(9);
                                facebookFileCacheEntry.url_id = cursor.getString(10);
                                facebookFileCacheEntry.thumbnail_url = cursor.getString(11);
                                facebookFileCacheEntry.name = cursor.getString(12);
                                hashMap.put(facebookFileCacheEntry.path, facebookFileCacheEntry);
                            }
                            if (cursor == null) {
                                return hashMap;
                            }
                            cursor.close();
                            return hashMap;
                        }
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        if (cursor != null) {
                            cursor.close();
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
            return null;
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor2 != null) {
            }
            throw th;
        }
    }

    public void udpateFile(FacebookFileCacheEntry facebookFileCacheEntry) {
        if (this.db == null || facebookFileCacheEntry == null || facebookFileCacheEntry.path == null) {
            return;
        }
        if (facebookFileCacheEntry.path.length() > 1 && facebookFileCacheEntry.path.endsWith("/")) {
            facebookFileCacheEntry.path = facebookFileCacheEntry.path.substring(0, facebookFileCacheEntry.path.length() - 1);
        }
        try {
            this.db.execSQL("UPDATE file_cache SET mtime=" + facebookFileCacheEntry.mtime + "," + COLUMN_SIZE + "=" + facebookFileCacheEntry.size + "," + COLUMN_HASH + "=" + qstring(facebookFileCacheEntry.hash) + "," + COLUMN_CTIME + "=" + facebookFileCacheEntry.checktime + "," + COLUMN_PID + "=" + facebookFileCacheEntry.parentId + "," + COLUMN_PATH + "=" + qstring(facebookFileCacheEntry.path) + "," + COLUMN_NAME + "=" + qstring(facebookFileCacheEntry.name) + "," + COLUMN_URL + "=" + qstring(facebookFileCacheEntry.url) + "," + COLUMN_DIR_TYPE + "=" + facebookFileCacheEntry.dir_type + "," + COLUMN_PRESENT + "=" + facebookFileCacheEntry.present + "," + COLUMN_URL_ID + "=" + qstring(facebookFileCacheEntry.url_id) + "," + COLUMN_THUMBNAIL_URL + "=" + qstring(facebookFileCacheEntry.thumbnail_url) + " WHERE server_id=" + facebookFileCacheEntry.serverId + " AND id=" + facebookFileCacheEntry.id);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateFiles(int i, int i2, HashMap<String, FacebookFileCacheEntry> hashMap, HashMap<String, FacebookFileCacheEntry> hashMap2, boolean z) {
        if (hashMap2 != null) {
            for (Map.Entry<String, FacebookFileCacheEntry> entry : hashMap2.entrySet()) {
                String key = entry.getKey();
                FacebookFileCacheEntry value = entry.getValue();
                value.serverId = i;
                value.parentId = i2;
                FacebookFileCacheEntry facebookFileCacheEntry = hashMap == null ? null : hashMap.get(key);
                if (facebookFileCacheEntry != null) {
                    if (facebookFileCacheEntry.isDir != value.isDir) {
                        deleteEntry(facebookFileCacheEntry.serverId, facebookFileCacheEntry, true);
                        addFile(value);
                    } else if (value.size != facebookFileCacheEntry.size || ((value.url != null && !value.url.equals(facebookFileCacheEntry.url)) || value.present != facebookFileCacheEntry.present || value.dir_type != facebookFileCacheEntry.dir_type || value.mtime != facebookFileCacheEntry.mtime)) {
                        value.id = facebookFileCacheEntry.id;
                        udpateFile(value);
                    }
                    hashMap.remove(key);
                } else {
                    addFile(value);
                }
            }
        }
        if (hashMap == null || z) {
            return;
        }
        Iterator<Map.Entry<String, FacebookFileCacheEntry>> it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            FacebookFileCacheEntry value2 = it.next().getValue();
            deleteEntry(value2.serverId, value2, true);
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0121: MOVE (r8 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:30:0x0121 */
    /* JADX WARN: Removed duplicated region for block: B:32:0x011c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateFiles(int i, int i2, HashMap<String, FacebookFileCacheEntry> hashMap, boolean z) {
        Cursor cursor;
        Cursor cursor2;
        Cursor cursor3 = null;
        if (this.db == null) {
            return;
        }
        HashMap<String, FacebookFileCacheEntry> hashMap2 = new HashMap<>();
        try {
            try {
                cursor = this.db.query(filecache_table, new String[]{"id", COLUMN_PATH, COLUMN_ISDIR, COLUMN_HASH, COLUMN_MTIME, COLUMN_SIZE, COLUMN_CTIME, COLUMN_DIR_TYPE, COLUMN_URL, COLUMN_PRESENT, COLUMN_URL_ID, COLUMN_THUMBNAIL_URL}, "server_id=" + i + " AND " + COLUMN_PID + "=" + i2, null, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.getCount() != 0) {
                            for (boolean moveToFirst = cursor.moveToFirst(); moveToFirst; moveToFirst = cursor.moveToNext()) {
                                FacebookFileCacheEntry facebookFileCacheEntry = new FacebookFileCacheEntry();
                                facebookFileCacheEntry.id = cursor.getInt(0);
                                facebookFileCacheEntry.serverId = i;
                                facebookFileCacheEntry.parentId = i2;
                                facebookFileCacheEntry.path = cursor.getString(1);
                                facebookFileCacheEntry.isDir = cursor.getInt(2);
                                facebookFileCacheEntry.hash = cursor.getString(3);
                                facebookFileCacheEntry.mtime = cursor.getInt(4);
                                facebookFileCacheEntry.size = cursor.getInt(5);
                                facebookFileCacheEntry.checktime = cursor.getInt(6);
                                facebookFileCacheEntry.dir_type = cursor.getInt(7);
                                facebookFileCacheEntry.url = cursor.getString(8);
                                facebookFileCacheEntry.present = cursor.getInt(9);
                                facebookFileCacheEntry.url_id = cursor.getString(10);
                                facebookFileCacheEntry.thumbnail_url = cursor.getString(11);
                                hashMap2.put(facebookFileCacheEntry.path, facebookFileCacheEntry);
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        if (cursor != null) {
                            cursor.close();
                            return;
                        }
                        return;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
                updateFiles(i, i2, hashMap2, hashMap, z);
            } catch (Throwable th) {
                th = th;
                cursor3 = cursor2;
                if (cursor3 != null) {
                    cursor3.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor3 != null) {
            }
            throw th;
        }
    }
}

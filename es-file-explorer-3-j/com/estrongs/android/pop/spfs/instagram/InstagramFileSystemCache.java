package com.estrongs.android.pop.spfs.instagram;

import android.content.ContentValues;
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
public class InstagramFileSystemCache {
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
    private static InstagramFileSystemCache inst = null;
    private static HashMap<String, Integer> server_ids = new HashMap<>();

    /* loaded from: classes.dex */
    public class InstagramFileCacheEntry {
        public String description;
        public boolean familyFlag;
        public boolean friendFlag;
        public String name;
        public List<a> notes;
        public String ownerId;
        public String ownerUsername;
        public boolean publicFlag;
        public int id = 0;
        public int serverId = 0;
        public int parentId = 0;
        public String path = null;
        public int isDir = 0;
        public String hash = null;
        public int mtime = 0;
        public int size = 0;
        public int checktime = 0;
        public int dir_type = 0;
        public int present = 0;
        public String url_id = null;
        public String url = null;
        public String thumbnail_url = null;
    }

    private InstagramFileSystemCache() {
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

    public static synchronized InstagramFileSystemCache instance() {
        File file;
        InstagramFileSystemCache instagramFileSystemCache = null;
        synchronized (InstagramFileSystemCache.class) {
            if (inst == null) {
                if (dbpath == null) {
                    instagramFileSystemCache = new InstagramFileSystemCache();
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
                            inst = new InstagramFileSystemCache();
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
                            instagramFileSystemCache = new InstagramFileSystemCache();
                            return instagramFileSystemCache;
                        }
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        instagramFileSystemCache = new InstagramFileSystemCache();
                    }
                }
            }
            instagramFileSystemCache = inst;
        }
        return instagramFileSystemCache;
    }

    private String qstring(String str) {
        return str == null ? "\"\"" : "\"" + str + "\"";
    }

    public static void setPath(String str) {
        dbpath = str + "/";
    }

    private static void updateDatabase(int i) {
    }

    public void addFile(InstagramFileCacheEntry instagramFileCacheEntry) {
        if (this.db == null || instagramFileCacheEntry == null || instagramFileCacheEntry.path == null) {
            return;
        }
        if (instagramFileCacheEntry.path.length() > 1 && instagramFileCacheEntry.path.endsWith("/")) {
            instagramFileCacheEntry.path = instagramFileCacheEntry.path.substring(0, instagramFileCacheEntry.path.length() - 1);
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("server_id", Integer.valueOf(instagramFileCacheEntry.serverId));
        contentValues.put(COLUMN_PATH, instagramFileCacheEntry.path);
        contentValues.put(COLUMN_NAME, instagramFileCacheEntry.name);
        contentValues.put(COLUMN_ISDIR, Integer.valueOf(instagramFileCacheEntry.isDir));
        contentValues.put(COLUMN_HASH, instagramFileCacheEntry.hash);
        contentValues.put(COLUMN_MTIME, Integer.valueOf(instagramFileCacheEntry.mtime));
        contentValues.put(COLUMN_SIZE, Integer.valueOf(instagramFileCacheEntry.size));
        contentValues.put(COLUMN_PID, Integer.valueOf(instagramFileCacheEntry.parentId));
        contentValues.put(COLUMN_CTIME, Integer.valueOf(instagramFileCacheEntry.checktime));
        contentValues.put(COLUMN_DIR_TYPE, Integer.valueOf(instagramFileCacheEntry.dir_type));
        contentValues.put(COLUMN_URL, instagramFileCacheEntry.url);
        contentValues.put(COLUMN_PRESENT, Integer.valueOf(instagramFileCacheEntry.present));
        contentValues.put(COLUMN_URL_ID, instagramFileCacheEntry.url_id);
        contentValues.put(COLUMN_THUMBNAIL_URL, instagramFileCacheEntry.thumbnail_url);
        try {
            this.db.insert(filecache_table, null, contentValues);
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

    public void deleteEntry(int i, InstagramFileCacheEntry instagramFileCacheEntry, boolean z) {
        if (z) {
            this.db.execSQL("DELETE FROM file_cache WHERE server_id=" + i + " AND id=" + instagramFileCacheEntry.id);
        }
        if (instagramFileCacheEntry.isDir == 1) {
            HashMap<String, InstagramFileCacheEntry> listFile = listFile(i, instagramFileCacheEntry.id);
            this.db.execSQL("DELETE FROM file_cache WHERE server_id=" + i + " AND " + COLUMN_PID + "=" + instagramFileCacheEntry.id);
            if (listFile != null) {
                Iterator<Map.Entry<String, InstagramFileCacheEntry>> it = listFile.entrySet().iterator();
                while (it.hasNext()) {
                    InstagramFileCacheEntry value = it.next().getValue();
                    if (value.isDir == 1) {
                        deleteEntry(i, value, false);
                    }
                }
            }
        }
    }

    public void deleteFile(int i, String str) {
        InstagramFileCacheEntry file = getFile(i, str);
        if (file == null) {
            return;
        }
        deleteEntry(i, file, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0124  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public InstagramFileCacheEntry getFile(int i, int i2) {
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
                            InstagramFileCacheEntry instagramFileCacheEntry = new InstagramFileCacheEntry();
                            instagramFileCacheEntry.id = i2;
                            instagramFileCacheEntry.serverId = i;
                            instagramFileCacheEntry.path = cursor.getString(0);
                            instagramFileCacheEntry.parentId = cursor.getInt(1);
                            instagramFileCacheEntry.isDir = cursor.getInt(2);
                            instagramFileCacheEntry.hash = cursor.getString(3);
                            instagramFileCacheEntry.mtime = cursor.getInt(4);
                            instagramFileCacheEntry.size = cursor.getInt(5);
                            instagramFileCacheEntry.checktime = cursor.getInt(6);
                            instagramFileCacheEntry.dir_type = cursor.getInt(7);
                            instagramFileCacheEntry.url = cursor.getString(8);
                            instagramFileCacheEntry.present = cursor.getInt(9);
                            instagramFileCacheEntry.url_id = cursor.getString(10);
                            instagramFileCacheEntry.thumbnail_url = cursor.getString(11);
                            instagramFileCacheEntry.name = cursor.getString(12);
                            if (cursor == null) {
                                return instagramFileCacheEntry;
                            }
                            cursor.close();
                            return instagramFileCacheEntry;
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
    public InstagramFileCacheEntry getFile(int i, String str) {
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
                            InstagramFileCacheEntry instagramFileCacheEntry = new InstagramFileCacheEntry();
                            instagramFileCacheEntry.id = cursor.getInt(0);
                            instagramFileCacheEntry.serverId = i;
                            instagramFileCacheEntry.path = str;
                            instagramFileCacheEntry.parentId = cursor.getInt(1);
                            instagramFileCacheEntry.isDir = cursor.getInt(2);
                            instagramFileCacheEntry.hash = cursor.getString(3);
                            instagramFileCacheEntry.mtime = cursor.getInt(4);
                            instagramFileCacheEntry.size = cursor.getInt(5);
                            instagramFileCacheEntry.checktime = cursor.getInt(6);
                            instagramFileCacheEntry.dir_type = cursor.getInt(7);
                            instagramFileCacheEntry.url = cursor.getString(8);
                            instagramFileCacheEntry.present = cursor.getInt(9);
                            instagramFileCacheEntry.url_id = cursor.getString(10);
                            instagramFileCacheEntry.thumbnail_url = cursor.getString(11);
                            if (cursor == null) {
                                return instagramFileCacheEntry;
                            }
                            cursor.close();
                            return instagramFileCacheEntry;
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
    public HashMap<String, InstagramFileCacheEntry> listFile(int i, int i2) {
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
                            HashMap<String, InstagramFileCacheEntry> hashMap = new HashMap<>();
                            for (boolean moveToFirst = cursor.moveToFirst(); moveToFirst; moveToFirst = cursor.moveToNext()) {
                                InstagramFileCacheEntry instagramFileCacheEntry = new InstagramFileCacheEntry();
                                instagramFileCacheEntry.id = cursor.getInt(0);
                                instagramFileCacheEntry.serverId = i;
                                instagramFileCacheEntry.parentId = i2;
                                instagramFileCacheEntry.path = cursor.getString(1);
                                instagramFileCacheEntry.isDir = cursor.getInt(2);
                                instagramFileCacheEntry.hash = cursor.getString(3);
                                instagramFileCacheEntry.mtime = cursor.getInt(4);
                                instagramFileCacheEntry.size = cursor.getInt(5);
                                instagramFileCacheEntry.checktime = cursor.getInt(6);
                                instagramFileCacheEntry.dir_type = cursor.getInt(7);
                                instagramFileCacheEntry.url = cursor.getString(8);
                                instagramFileCacheEntry.present = cursor.getInt(9);
                                instagramFileCacheEntry.url_id = cursor.getString(10);
                                instagramFileCacheEntry.thumbnail_url = cursor.getString(11);
                                instagramFileCacheEntry.name = cursor.getString(12);
                                hashMap.put(instagramFileCacheEntry.path, instagramFileCacheEntry);
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

    public void udpateFile(InstagramFileCacheEntry instagramFileCacheEntry) {
        if (this.db == null || instagramFileCacheEntry == null || instagramFileCacheEntry.path == null) {
            return;
        }
        if (instagramFileCacheEntry.path.length() > 1 && instagramFileCacheEntry.path.endsWith("/")) {
            instagramFileCacheEntry.path = instagramFileCacheEntry.path.substring(0, instagramFileCacheEntry.path.length() - 1);
        }
        try {
            this.db.execSQL("UPDATE file_cache SET mtime=" + instagramFileCacheEntry.mtime + "," + COLUMN_SIZE + "=" + instagramFileCacheEntry.size + "," + COLUMN_HASH + "=" + qstring(instagramFileCacheEntry.hash) + "," + COLUMN_CTIME + "=" + instagramFileCacheEntry.checktime + "," + COLUMN_PID + "=" + instagramFileCacheEntry.parentId + "," + COLUMN_PATH + "=" + qstring(instagramFileCacheEntry.path) + "," + COLUMN_NAME + "=" + qstring(instagramFileCacheEntry.name) + "," + COLUMN_URL + "=" + qstring(instagramFileCacheEntry.url) + "," + COLUMN_DIR_TYPE + "=" + instagramFileCacheEntry.dir_type + "," + COLUMN_PRESENT + "=" + instagramFileCacheEntry.present + "," + COLUMN_URL_ID + "=" + qstring(instagramFileCacheEntry.url_id) + "," + COLUMN_THUMBNAIL_URL + "=" + qstring(instagramFileCacheEntry.thumbnail_url) + " WHERE server_id=" + instagramFileCacheEntry.serverId + " AND id=" + instagramFileCacheEntry.id);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateFiles(int i, int i2, HashMap<String, InstagramFileCacheEntry> hashMap, HashMap<String, InstagramFileCacheEntry> hashMap2, boolean z) {
        if (hashMap2 != null) {
            for (Map.Entry<String, InstagramFileCacheEntry> entry : hashMap2.entrySet()) {
                String key = entry.getKey();
                InstagramFileCacheEntry value = entry.getValue();
                value.serverId = i;
                value.parentId = i2;
                InstagramFileCacheEntry instagramFileCacheEntry = hashMap == null ? null : hashMap.get(key);
                if (instagramFileCacheEntry != null) {
                    if (instagramFileCacheEntry.isDir != value.isDir) {
                        deleteEntry(instagramFileCacheEntry.serverId, instagramFileCacheEntry, true);
                        addFile(value);
                    } else if (value.size != instagramFileCacheEntry.size || ((value.url != null && !value.url.equals(instagramFileCacheEntry.url)) || value.present != instagramFileCacheEntry.present || value.dir_type != instagramFileCacheEntry.dir_type || value.mtime != instagramFileCacheEntry.mtime)) {
                        value.id = instagramFileCacheEntry.id;
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
        Iterator<Map.Entry<String, InstagramFileCacheEntry>> it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            InstagramFileCacheEntry value2 = it.next().getValue();
            deleteEntry(value2.serverId, value2, true);
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0121: MOVE (r8 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:30:0x0121 */
    /* JADX WARN: Removed duplicated region for block: B:32:0x011c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateFiles(int i, int i2, HashMap<String, InstagramFileCacheEntry> hashMap, boolean z) {
        Cursor cursor;
        Cursor cursor2;
        Cursor cursor3 = null;
        if (this.db == null) {
            return;
        }
        HashMap<String, InstagramFileCacheEntry> hashMap2 = new HashMap<>();
        try {
            try {
                cursor = this.db.query(filecache_table, new String[]{"id", COLUMN_PATH, COLUMN_ISDIR, COLUMN_HASH, COLUMN_MTIME, COLUMN_SIZE, COLUMN_CTIME, COLUMN_DIR_TYPE, COLUMN_URL, COLUMN_PRESENT, COLUMN_URL_ID, COLUMN_THUMBNAIL_URL}, "server_id=" + i + " AND " + COLUMN_PID + "=" + i2, null, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.getCount() != 0) {
                            for (boolean moveToFirst = cursor.moveToFirst(); moveToFirst; moveToFirst = cursor.moveToNext()) {
                                InstagramFileCacheEntry instagramFileCacheEntry = new InstagramFileCacheEntry();
                                instagramFileCacheEntry.id = cursor.getInt(0);
                                instagramFileCacheEntry.serverId = i;
                                instagramFileCacheEntry.parentId = i2;
                                instagramFileCacheEntry.path = cursor.getString(1);
                                instagramFileCacheEntry.isDir = cursor.getInt(2);
                                instagramFileCacheEntry.hash = cursor.getString(3);
                                instagramFileCacheEntry.mtime = cursor.getInt(4);
                                instagramFileCacheEntry.size = cursor.getInt(5);
                                instagramFileCacheEntry.checktime = cursor.getInt(6);
                                instagramFileCacheEntry.dir_type = cursor.getInt(7);
                                instagramFileCacheEntry.url = cursor.getString(8);
                                instagramFileCacheEntry.present = cursor.getInt(9);
                                instagramFileCacheEntry.url_id = cursor.getString(10);
                                instagramFileCacheEntry.thumbnail_url = cursor.getString(11);
                                hashMap2.put(instagramFileCacheEntry.path, instagramFileCacheEntry);
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

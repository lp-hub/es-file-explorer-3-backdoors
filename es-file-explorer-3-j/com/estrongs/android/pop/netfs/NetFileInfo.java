package com.estrongs.android.pop.netfs;

import java.util.HashMap;

/* loaded from: classes.dex */
public class NetFileInfo {
    public static final int FOLDER_TYPE_DEVICE = 1;
    public static final int FOLDER_TYPE_FOLDER = 0;
    public static final int FOLDER_TYPE_RECV_SHARED = 8;
    public static final int FOLDER_TYPE_SHARED = 64;
    public static final int FOLDER_TYPE_VIRTUAL = 32;
    public static final int FOLDER_TYPE_VIRTUAL_ARCHIVE = 16;
    public static final int FOLDER_TYPE_VIRTUAL_BFCASE = 2;
    public static final int FOLDER_TYPE_VIRTUAL_PHOTO = 4;
    public static final String INTENT_FILE_URL = "intent_file_url";
    public static final String MIME_TYPE = "mime_type";
    public static final String PUBLIC_SHARE = "public_share_link";
    public static final String WEB_FILE_URL = "web_file_url";
    private HashMap<String, Object> extras;
    public int version = 1;
    public String name = null;
    public String path = null;
    public boolean isDirectory = false;
    public long size = 0;
    public long createdTime = 0;
    public long lastAccessTime = 0;
    public long lastModifiedTime = 0;
    public boolean readable = true;
    public boolean writable = true;
    public boolean hidden = false;
    public int folder_type = 0;
    public String md5s = null;
    public int md5_block_size = -1;

    public Object getExtra(String str) {
        if (this.extras != null) {
            return this.extras.get(str);
        }
        return null;
    }

    public Object putExtra(String str, Object obj) {
        if (this.extras == null) {
            this.extras = new HashMap<>();
        }
        return this.extras.put(str, obj);
    }
}

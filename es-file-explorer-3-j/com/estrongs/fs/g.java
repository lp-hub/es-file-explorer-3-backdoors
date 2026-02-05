package com.estrongs.fs;

/* loaded from: classes.dex */
public interface g {
    long createdTime();

    boolean exists();

    String getAbsolutePath();

    int getESFileType();

    Object getExtra(String str);

    l getFileType();

    String getName();

    String getPath();

    boolean hasPermission(int i);

    boolean isLink();

    long lastModified();

    long length();

    Object putExtra(String str, Object obj);

    void setESFileType(int i);

    void setFileType(l lVar);

    void setName(String str);

    void setShouldTryLoadThumbnail(boolean z);

    boolean shouldTryLoadThumbnail();
}

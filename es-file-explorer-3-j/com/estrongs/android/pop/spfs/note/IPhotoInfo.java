package com.estrongs.android.pop.spfs.note;

import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.util.TypedMap;
import com.gmail.yuyang226.flickr.a.a;
import java.util.List;

/* loaded from: classes.dex */
public interface IPhotoInfo {
    String addComment(String str, String str2, String str3, String str4);

    a addNote(String str, String str2, String str3, a aVar);

    void addPhoto(String str, String str2, String str3, String str4);

    Album createAlbum(String str, String str2, String str3, String str4);

    void deleteComment(String str, String str2, String str3, String str4);

    void deleteNote(String str, String str2, String str3);

    void editComment(String str, String str2, String str3, String str4);

    void editNote(String str, String str2, a aVar);

    List<Album> getAlbums(String str, String str2, String str3);

    List<Album> getAllAlbums(String str, String str2);

    String getBuddyIcon(String str, String str2);

    List<com.gmail.yuyang226.flickr.a.a.a> getComments(String str, String str2, String str3, TypedMap typedMap);

    SPFileInfo getPhotoInfo(String str, String str2, String str3);

    void removePhoto(String str, String str2, String str3, String str4);

    void setMeta(String str, String str2, String str3, String str4, String str5);

    void setPerms(String str, String str2, String str3, TypedMap typedMap);

    void setTags(String str, String str2, String str3, String str4);
}

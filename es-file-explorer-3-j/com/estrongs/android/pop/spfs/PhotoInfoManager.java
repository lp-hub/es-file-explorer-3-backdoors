package com.estrongs.android.pop.spfs;

import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ak;
import com.gmail.yuyang226.flickr.a.a;
import java.util.List;

/* loaded from: classes.dex */
public class PhotoInfoManager {
    public static String addComment(String str, String str2) {
        switch (ak.E(str)) {
            case 18:
                try {
                    return SPFileSystem.addComment(str, str2);
                } catch (PhotoInfoException e) {
                    throw new PhotoInfoException(e.getMessage());
                }
            default:
                return null;
        }
    }

    public static a addNote(String str, a aVar) {
        switch (ak.E(str)) {
            case 18:
                try {
                    return SPFileSystem.addNote(str, aVar);
                } catch (PhotoInfoException e) {
                    throw new PhotoInfoException(e.getMessage());
                }
            default:
                return null;
        }
    }

    public static void addPhoto(String str, String str2) {
        switch (ak.E(str)) {
            case 18:
                SPFileSystem.addPhoto(str, str2);
                return;
            default:
                return;
        }
    }

    public static Album createAlbum(String str, String str2, String str3) {
        switch (ak.E(str3)) {
            case 18:
                return SPFileSystem.createAlbum(str, str2, str3);
            default:
                return null;
        }
    }

    public static void deleteComment(String str, String str2) {
        switch (ak.E(str)) {
            case 18:
                try {
                    SPFileSystem.deleteComment(str, str2);
                    return;
                } catch (PhotoInfoException e) {
                    throw new PhotoInfoException(e.getMessage());
                }
            default:
                return;
        }
    }

    public static void deleteNote(String str, String str2) {
        switch (ak.E(str)) {
            case 18:
                try {
                    SPFileSystem.deleteNote(str, str2);
                    return;
                } catch (PhotoInfoException e) {
                    throw new PhotoInfoException(e.getMessage());
                }
            default:
                return;
        }
    }

    public static void editComment(String str, String str2, String str3) {
        switch (ak.E(str)) {
            case 18:
                try {
                    SPFileSystem.editComment(str, str2, str3);
                    return;
                } catch (PhotoInfoException e) {
                    throw new PhotoInfoException(e.getMessage());
                }
            default:
                return;
        }
    }

    public static void editNote(String str, a aVar) {
        switch (ak.E(str)) {
            case 18:
                try {
                    SPFileSystem.editNote(str, aVar);
                    return;
                } catch (PhotoInfoException e) {
                    throw new PhotoInfoException(e.getMessage());
                }
            default:
                return;
        }
    }

    public static List<Album> getAlbums(String str) {
        switch (ak.E(str)) {
            case 18:
                return SPFileSystem.getAlbums(str);
            default:
                return null;
        }
    }

    public static List<Album> getAllAlbums(String str) {
        switch (ak.E(str)) {
            case 18:
                return SPFileSystem.getAllAlbums(str);
            default:
                return null;
        }
    }

    public static String getBuddyIcon(String str, String str2) {
        switch (ak.E(str)) {
            case 18:
                try {
                    return SPFileSystem.getBuddyIcon(str, str2);
                } catch (PhotoInfoException e) {
                    throw new PhotoInfoException(e.getMessage());
                }
            default:
                return null;
        }
    }

    public static List<com.gmail.yuyang226.flickr.a.a.a> getComments(String str, TypedMap typedMap) {
        switch (ak.E(str)) {
            case 18:
                try {
                    return SPFileSystem.getComments(str, typedMap);
                } catch (PhotoInfoException e) {
                    throw new PhotoInfoException(e.getMessage());
                }
            default:
                return null;
        }
    }

    public static String getPhotoExtension(String str) {
        switch (ak.E(str)) {
            case 18:
                try {
                    return SPFileSystem.getPhotoExtension(str);
                } catch (PhotoInfoException e) {
                    throw new PhotoInfoException(e.getMessage());
                }
            default:
                return null;
        }
    }

    public static SPFileInfo getPhotoInfo(String str) {
        switch (ak.E(str)) {
            case 18:
                try {
                    return SPFileSystem.getPhotoInfo(str);
                } catch (PhotoInfoException e) {
                    throw new PhotoInfoException(e.getMessage());
                }
            default:
                return null;
        }
    }

    public static void removePhoto(String str) {
        removePhoto(com.estrongs.fs.a.a.a(str), com.estrongs.fs.a.a.b(str));
    }

    public static void removePhoto(String str, String str2) {
        switch (ak.E(str)) {
            case 18:
                SPFileSystem.removePhoto(str, str2);
                return;
            default:
                return;
        }
    }

    public static void setMeta(String str, String str2, String str3) {
        switch (ak.E(str)) {
            case 18:
                try {
                    SPFileSystem.setMeta(str, str2, str3);
                    return;
                } catch (PhotoInfoException e) {
                    throw new PhotoInfoException(e.getMessage());
                }
            default:
                return;
        }
    }

    public static void setPerms(String str, TypedMap typedMap) {
        switch (ak.E(str)) {
            case 18:
                try {
                    SPFileSystem.setPerms(str, typedMap);
                    return;
                } catch (PhotoInfoException e) {
                    throw new PhotoInfoException(e.getMessage());
                }
            default:
                return;
        }
    }

    public static void setTags(String str, String str2) {
        switch (ak.E(str)) {
            case 18:
                SPFileSystem.setTags(str, str2);
                return;
            default:
                return;
        }
    }
}

package com.estrongs.android.pop.spfs.task;

import com.estrongs.a.a;
import com.estrongs.a.q;
import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.pop.spfs.AlbumException;
import com.estrongs.android.pop.spfs.ISPFileSystem;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.pop.spfs.SPFileObject;
import com.estrongs.android.util.TypedMap;
import java.util.List;

/* loaded from: classes.dex */
public class FlickrEditTask extends a {
    SPFileObject fo;
    TypedMap privacies;

    public FlickrEditTask(SPFileObject sPFileObject, TypedMap typedMap) {
        this.fo = sPFileObject;
        this.privacies = typedMap;
    }

    @Override // com.estrongs.a.a
    public void handleMessage(int i, Object... objArr) {
        switch (i) {
            case 1:
                this.processData.d += ((Long) objArr[0]).longValue();
                this.processData.f196a = (String) objArr[1];
                return;
            default:
                super.handleMessage(i, objArr);
                return;
        }
    }

    @Override // com.estrongs.a.a
    public boolean task() {
        try {
            try {
                if (this.privacies.getString("title") != null) {
                    PhotoInfoManager.setMeta(this.fo.getPath(), this.privacies.getString("title"), this.privacies.getString("description"));
                    this.fo.setName(this.privacies.getString("title"));
                    this.fo.setDescription(this.privacies.getString("description"));
                }
                if (this.privacies.getString("tags") != null) {
                    PhotoInfoManager.setTags(this.fo.getPath(), this.privacies.getString("tags"));
                }
                if (this.privacies.get("sets") != null) {
                    List list = (List) this.privacies.get("sets");
                    for (int i = 0; i < list.size(); i++) {
                        Album album = (Album) list.get(i);
                        if (album.id != null) {
                            PhotoInfoManager.addPhoto(album.path, com.estrongs.fs.a.a.b(this.fo.getPath()));
                        } else {
                            PhotoInfoManager.createAlbum(album.name, album.description, this.fo.getPath());
                        }
                    }
                }
                if (this.privacies.get(ISPFileSystem.PARAMETER_SETS_DELETE) != null) {
                    List list2 = (List) this.privacies.get(ISPFileSystem.PARAMETER_SETS_DELETE);
                    for (int i2 = 0; i2 < list2.size(); i2++) {
                        PhotoInfoManager.removePhoto(((Album) list2.get(i2)).path, com.estrongs.fs.a.a.b(this.fo.getPath()));
                    }
                }
                if (this.privacies.get("is_public") != null) {
                    PhotoInfoManager.setPerms(this.fo.getPath(), this.privacies);
                    this.fo.setPublicFlag(this.privacies.getBoolean("is_public"));
                    this.fo.setFriendFlag(this.privacies.getBoolean("is_friend"));
                    this.fo.setFamilyFlag(this.privacies.getBoolean("is_family"));
                }
                setTaskResult(0, null);
                return true;
            } catch (PhotoInfoException e) {
                e.printStackTrace();
                setTaskResult(10000, new q(e.toString(), (Exception) e));
                return false;
            }
        } catch (AlbumException e2) {
            e2.printStackTrace();
            setTaskResult(10000, new q(e2.toString(), (Exception) e2));
            return false;
        } catch (Exception e3) {
            e3.printStackTrace();
            setTaskResult(10000, new q(e3.toString(), e3));
            return false;
        }
    }
}

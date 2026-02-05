package com.estrongs.android.pop.spfs.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.e;
import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.pop.spfs.AlbumException;
import com.estrongs.android.pop.spfs.ISPFileSystem;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.pop.spfs.SPFileInfo;
import com.estrongs.android.pop.spfs.SPFileObject;
import com.estrongs.android.pop.spfs.dialog.FlickrPhotoAlbumDialog;
import com.estrongs.android.pop.utils.a;
import com.estrongs.android.ui.b.ag;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class FlickrPhotoPrivacyDialog extends ag {
    private static final String ALBUM_DIV = ",";
    private static final String TAG_DIV = " ";
    private List<Album> addAlbumList;
    FlickrPhotoAlbumDialog albumDialog;
    private List<Album> albumList;
    private List<Album> allAlbumList;
    private Button btn_pic_name;
    private CheckBox cbxFamiliy;
    private CheckBox cbxFriend;
    private EditText description;
    private String destPath;
    private SPFileInfo info;
    private boolean isAlbumEdit;
    private View overwriteOptionView;
    private PrivacyOptionCallback pocb;
    private TypedMap privacies;
    private RadioButton radioAnyone;
    private RadioGroup radioGroup;
    private RadioButton radioOnlyYou;
    private List<Album> removeAlbumList;
    private List<Album> selectedAlbumList;
    private EditText tag;
    private EditText title;

    /* loaded from: classes.dex */
    public interface PrivacyOptionCallback {
        void setPrivacty(TypedMap typedMap, boolean z);
    }

    public FlickrPhotoPrivacyDialog(Context context, PrivacyOptionCallback privacyOptionCallback, SPFileObject sPFileObject) {
        this(context, privacyOptionCallback, sPFileObject, null);
    }

    /* JADX WARN: Type inference failed for: r1v37, types: [com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog$6] */
    public FlickrPhotoPrivacyDialog(Context context, PrivacyOptionCallback privacyOptionCallback, final SPFileObject sPFileObject, String str) {
        super(context);
        this.privacies = new TypedMap();
        this.pocb = null;
        this.addAlbumList = null;
        this.removeAlbumList = null;
        this.selectedAlbumList = null;
        this.allAlbumList = null;
        this.info = null;
        this.albumDialog = null;
        this.isAlbumEdit = false;
        this.pocb = privacyOptionCallback;
        this.destPath = str;
        if (sPFileObject != null) {
            this.destPath = sPFileObject.getPath();
        }
        this.isAlbumEdit = str == null && ak.ay(this.destPath);
        setTitle(this.mContext.getResources().getString(C0000R.string.privacy_setting));
        this.overwriteOptionView = e.a(context).inflate(C0000R.layout.flickr_photo_privacy, (ViewGroup) null);
        setContentView(this.overwriteOptionView);
        final ProgressBar progressBar = (ProgressBar) findViewById(C0000R.id.scan_progress);
        final View findViewById = findViewById(C0000R.id.privacy_view);
        this.title = (EditText) this.overwriteOptionView.findViewById(C0000R.id.title);
        this.description = (EditText) this.overwriteOptionView.findViewById(C0000R.id.description);
        this.tag = (EditText) this.overwriteOptionView.findViewById(C0000R.id.tag);
        this.btn_pic_name = (Button) this.overwriteOptionView.findViewById(C0000R.id.btn_pic_name);
        final FlickrPhotoAlbumDialog.AlbumOptionCallback albumOptionCallback = new FlickrPhotoAlbumDialog.AlbumOptionCallback() { // from class: com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog.1
            @Override // com.estrongs.android.pop.spfs.dialog.FlickrPhotoAlbumDialog.AlbumOptionCallback
            public void setAlbum(List<Album> list, List<Album> list2, List<Album> list3, boolean z, String str2) {
                FlickrPhotoPrivacyDialog.this.addAlbumList = list;
                FlickrPhotoPrivacyDialog.this.removeAlbumList = list2;
                FlickrPhotoPrivacyDialog.this.selectedAlbumList = list3;
                if (z) {
                    if (FlickrPhotoPrivacyDialog.this.addAlbumList == null) {
                        FlickrPhotoPrivacyDialog.this.addAlbumList = new ArrayList();
                    }
                    FlickrPhotoPrivacyDialog.this.addAlbumList.add(new Album(null, str2, null, null));
                    list3.add(new Album(null, str2, null, null));
                }
                FlickrPhotoPrivacyDialog.this.displayPicName(list3);
            }
        };
        this.btn_pic_name.setOnClickListener(new View.OnClickListener() { // from class: com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (FlickrPhotoPrivacyDialog.this.albumDialog == null) {
                    FlickrPhotoPrivacyDialog.this.albumDialog = new FlickrPhotoAlbumDialog(FlickrPhotoPrivacyDialog.this.mContext, albumOptionCallback, FlickrPhotoPrivacyDialog.this.destPath, FlickrPhotoPrivacyDialog.this.albumList, FlickrPhotoPrivacyDialog.this.allAlbumList);
                }
                FlickrPhotoPrivacyDialog.this.albumDialog.show();
            }
        });
        this.radioGroup = (RadioGroup) this.overwriteOptionView.findViewById(C0000R.id.privacy_group);
        this.radioOnlyYou = (RadioButton) this.overwriteOptionView.findViewById(C0000R.id.only_you);
        this.radioAnyone = (RadioButton) this.overwriteOptionView.findViewById(C0000R.id.anyone);
        this.cbxFriend = (CheckBox) this.overwriteOptionView.findViewById(C0000R.id.friend);
        this.cbxFamiliy = (CheckBox) this.overwriteOptionView.findViewById(C0000R.id.family);
        this.radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog.3
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup, int i) {
                if (radioGroup.getCheckedRadioButtonId() == C0000R.id.only_you) {
                    FlickrPhotoPrivacyDialog.this.cbxFriend.setEnabled(true);
                    FlickrPhotoPrivacyDialog.this.cbxFamiliy.setEnabled(true);
                } else if (radioGroup.getCheckedRadioButtonId() == C0000R.id.anyone) {
                    FlickrPhotoPrivacyDialog.this.cbxFriend.setEnabled(false);
                    FlickrPhotoPrivacyDialog.this.cbxFamiliy.setEnabled(false);
                }
            }
        });
        adjustkUI();
        setConfirmButton(context.getText(C0000R.string.confirm_ok), new DialogInterface.OnClickListener() { // from class: com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (progressBar.getVisibility() == 0) {
                    return;
                }
                if (sPFileObject != null) {
                    if (!sPFileObject.getName().equals(FlickrPhotoPrivacyDialog.this.title.getText().toString()) || FlickrPhotoPrivacyDialog.this.info == null || !FlickrPhotoPrivacyDialog.this.info.description.equals(FlickrPhotoPrivacyDialog.this.description.getText().toString())) {
                        FlickrPhotoPrivacyDialog.this.privacies.put("title", FlickrPhotoPrivacyDialog.this.title.getText().toString());
                        FlickrPhotoPrivacyDialog.this.privacies.put("description", FlickrPhotoPrivacyDialog.this.description.getText().toString());
                    }
                } else if (!"".equals(FlickrPhotoPrivacyDialog.this.title.getText().toString()) || !"".equals(FlickrPhotoPrivacyDialog.this.description.getText().toString())) {
                    FlickrPhotoPrivacyDialog.this.privacies.put("title", FlickrPhotoPrivacyDialog.this.title.getText().toString());
                    FlickrPhotoPrivacyDialog.this.privacies.put("description", FlickrPhotoPrivacyDialog.this.description.getText().toString());
                }
                if (!FlickrPhotoPrivacyDialog.this.isAlbumEdit && (FlickrPhotoPrivacyDialog.this.info == null || !FlickrPhotoPrivacyDialog.this.info.tags.equals(FlickrPhotoPrivacyDialog.this.tag.getText().toString()))) {
                    FlickrPhotoPrivacyDialog.this.privacies.put("tags", FlickrPhotoPrivacyDialog.this.tag.getText().toString());
                }
                if (FlickrPhotoPrivacyDialog.this.addAlbumList != null && FlickrPhotoPrivacyDialog.this.addAlbumList.size() >= 1) {
                    FlickrPhotoPrivacyDialog.this.privacies.put("sets", FlickrPhotoPrivacyDialog.this.addAlbumList);
                }
                if (FlickrPhotoPrivacyDialog.this.removeAlbumList != null && FlickrPhotoPrivacyDialog.this.removeAlbumList.size() >= 1) {
                    FlickrPhotoPrivacyDialog.this.privacies.put(ISPFileSystem.PARAMETER_SETS_DELETE, FlickrPhotoPrivacyDialog.this.removeAlbumList);
                }
                if (!FlickrPhotoPrivacyDialog.this.isAlbumEdit && FlickrPhotoPrivacyDialog.this.selectedAlbumList != null && FlickrPhotoPrivacyDialog.this.selectedAlbumList.size() > 0) {
                    Album album = (Album) FlickrPhotoPrivacyDialog.this.selectedAlbumList.get(0);
                    if (!aw.a((CharSequence) album.path)) {
                        FlickrPhotoPrivacyDialog.this.privacies.put(ISPFileSystem.PARAMETER_ALBUMS_SELECTED, ((Album) FlickrPhotoPrivacyDialog.this.selectedAlbumList.get(0)).path);
                    } else if (!aw.a((CharSequence) album.name)) {
                        FlickrPhotoPrivacyDialog.this.privacies.put(ISPFileSystem.PARAMETER_ALBUM_NEW, ((Album) FlickrPhotoPrivacyDialog.this.selectedAlbumList.get(0)).name);
                    }
                } else if (FlickrPhotoPrivacyDialog.this.albumList != null && FlickrPhotoPrivacyDialog.this.albumList.size() > 0) {
                    FlickrPhotoPrivacyDialog.this.privacies.put(ISPFileSystem.PARAMETER_ALBUMS_SELECTED, ((Album) FlickrPhotoPrivacyDialog.this.albumList.get(0)).path);
                }
                if (!FlickrPhotoPrivacyDialog.this.isAlbumEdit) {
                    if (FlickrPhotoPrivacyDialog.this.radioOnlyYou.isChecked()) {
                        FlickrPhotoPrivacyDialog.this.privacies.put("is_public", false);
                        FlickrPhotoPrivacyDialog.this.privacies.put("is_friend", Boolean.valueOf(FlickrPhotoPrivacyDialog.this.cbxFriend.isChecked()));
                        FlickrPhotoPrivacyDialog.this.privacies.put("is_family", Boolean.valueOf(FlickrPhotoPrivacyDialog.this.cbxFamiliy.isChecked()));
                    } else {
                        FlickrPhotoPrivacyDialog.this.privacies.put("is_public", true);
                        FlickrPhotoPrivacyDialog.this.privacies.put("is_friend", false);
                        FlickrPhotoPrivacyDialog.this.privacies.put("is_family", false);
                    }
                }
                FlickrPhotoPrivacyDialog.this.dismiss(false);
            }
        });
        setCancelButton(context.getText(C0000R.string.confirm_cancel), new DialogInterface.OnClickListener() { // from class: com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog.5
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                FlickrPhotoPrivacyDialog.this.dismiss(true);
            }
        });
        if (sPFileObject != null) {
            this.title.setText(sPFileObject.getName());
            if (sPFileObject.isPublicFlag()) {
                this.radioAnyone.setChecked(true);
                this.radioOnlyYou.setChecked(false);
                this.cbxFriend.setChecked(false);
                this.cbxFriend.setEnabled(false);
                this.cbxFamiliy.setChecked(false);
                this.cbxFamiliy.setEnabled(false);
            } else {
                this.radioAnyone.setChecked(false);
                this.radioOnlyYou.setChecked(true);
                this.cbxFriend.setChecked(sPFileObject.isFriendFlag());
                this.cbxFamiliy.setChecked(sPFileObject.isFamilyFlag());
            }
        }
        progressBar.setVisibility(0);
        findViewById.setVisibility(4);
        new AsyncTask<Void, Void, Void>() { // from class: com.estrongs.android.pop.spfs.dialog.FlickrPhotoPrivacyDialog.6
            boolean result = false;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Void doInBackground(Void... voidArr) {
                try {
                    if (sPFileObject != null) {
                        if (!FlickrPhotoPrivacyDialog.this.isAlbumEdit) {
                            FlickrPhotoPrivacyDialog.this.info = PhotoInfoManager.getPhotoInfo(sPFileObject.getPath());
                            FlickrPhotoPrivacyDialog.this.albumList = PhotoInfoManager.getAlbums(sPFileObject.getPath());
                        }
                    } else if (!FlickrPhotoPrivacyDialog.this.isAlbumEdit && ak.aw(FlickrPhotoPrivacyDialog.this.destPath) && !ak.ax(FlickrPhotoPrivacyDialog.this.destPath)) {
                        FlickrPhotoPrivacyDialog.this.allAlbumList = PhotoInfoManager.getAllAlbums(FlickrPhotoPrivacyDialog.this.destPath);
                        Iterator it = FlickrPhotoPrivacyDialog.this.allAlbumList.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            Album album = (Album) it.next();
                            if (FlickrPhotoPrivacyDialog.this.destPath.startsWith(album.path)) {
                                FlickrPhotoPrivacyDialog.this.albumList = new ArrayList();
                                FlickrPhotoPrivacyDialog.this.albumList.add(album);
                                break;
                            }
                        }
                    }
                    this.result = true;
                    return null;
                } catch (AlbumException e) {
                    e.printStackTrace();
                    return null;
                } catch (PhotoInfoException e2) {
                    e2.printStackTrace();
                    return null;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Void r6) {
                progressBar.setVisibility(8);
                findViewById.setVisibility(0);
                if (!this.result) {
                    a.a(FlickrPhotoPrivacyDialog.this.mContext, C0000R.string.flickr_privacy_load_failed);
                    return;
                }
                if (FlickrPhotoPrivacyDialog.this.isAlbumEdit) {
                    FlickrPhotoPrivacyDialog.this.description.setText(sPFileObject.getDescription() != null ? sPFileObject.getDescription() : "");
                    return;
                }
                if (FlickrPhotoPrivacyDialog.this.info != null) {
                    FlickrPhotoPrivacyDialog.this.description.setText(FlickrPhotoPrivacyDialog.this.info.description != null ? FlickrPhotoPrivacyDialog.this.info.description : "");
                    List<com.gmail.yuyang226.flickr.b.a> list = FlickrPhotoPrivacyDialog.this.info.tags;
                    if (list != null) {
                        int size = list.size();
                        StringBuilder sb = new StringBuilder();
                        if (size >= 1) {
                            for (int i = 0; i < size; i++) {
                                sb.append(list.get(i).a());
                                if (i != size - 1) {
                                    sb.append(FlickrPhotoPrivacyDialog.TAG_DIV);
                                }
                            }
                            FlickrPhotoPrivacyDialog.this.tag.setText(sb.toString());
                        }
                    }
                }
                FlickrPhotoPrivacyDialog.this.displayPicName(FlickrPhotoPrivacyDialog.this.albumList);
            }
        }.execute(new Void[0]);
    }

    public FlickrPhotoPrivacyDialog(Context context, PrivacyOptionCallback privacyOptionCallback, String str) {
        this(context, privacyOptionCallback, (SPFileObject) null, str);
        adjustkUI();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void displayPicName(List<Album> list) {
        if (list == null || list.size() < 1) {
            this.btn_pic_name.setText(this.mContext.getText(C0000R.string.album_setting));
            return;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<Album> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next().name).append(ALBUM_DIV);
        }
        sb.deleteCharAt(sb.length() - 1);
        this.btn_pic_name.setText(sb.toString());
    }

    protected void adjustkUI() {
        if (ak.ai(this.destPath)) {
            findViewById(C0000R.id.privacy_panel).setVisibility(8);
            findViewById(C0000R.id.privacy_description).setVisibility(8);
            findViewById(C0000R.id.privacy_tags).setVisibility(8);
            this.description.setVisibility(8);
            this.tag.setVisibility(8);
        }
        if (this.isAlbumEdit) {
            findViewById(C0000R.id.privacy_panel).setVisibility(8);
            findViewById(C0000R.id.privacy_tags).setVisibility(8);
            this.tag.setVisibility(8);
            findViewById(C0000R.id.privacy_album).setVisibility(8);
            findViewById(C0000R.id.album).setVisibility(8);
        }
    }

    public void dismiss(boolean z) {
        this.pocb.setPrivacty(this.privacies, z);
        dismiss();
    }
}

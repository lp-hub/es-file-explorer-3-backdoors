package com.estrongs.android.pop.spfs.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.e;
import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.pop.spfs.AlbumException;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.pop.utils.a;
import com.estrongs.android.ui.b.ag;
import com.estrongs.android.util.ak;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class FlickrPhotoAlbumDialog extends ag {
    private List<Album> albumList;
    private List<Album> allAlbumList;
    private boolean[] checkedInfo;
    LayoutInflater factory;
    private boolean isRadio;
    private AlbumOptionCallback mAocb;
    private final RadioButton new_album_radio;
    List<Album> selectedList;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class AlbumAdapter extends BaseAdapter {
        AlbumAdapter() {
        }

        public void cancelAllRadio() {
            for (int i = 0; i < FlickrPhotoAlbumDialog.this.checkedInfo.length; i++) {
                FlickrPhotoAlbumDialog.this.checkedInfo[i] = false;
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (FlickrPhotoAlbumDialog.this.allAlbumList == null) {
                return 0;
            }
            return FlickrPhotoAlbumDialog.this.allAlbumList.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return FlickrPhotoAlbumDialog.this.allAlbumList.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return 0L;
        }

        @Override // android.widget.Adapter
        public View getView(final int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = FlickrPhotoAlbumDialog.this.factory.inflate(C0000R.layout.flickr_album_checkbox, (ViewGroup) null);
            }
            ((TextView) view.findViewById(C0000R.id.album_name)).setText(((Album) FlickrPhotoAlbumDialog.this.allAlbumList.get(i)).name);
            final CheckBox checkBox = (CheckBox) view.findViewById(C0000R.id.album_check);
            checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.estrongs.android.pop.spfs.dialog.FlickrPhotoAlbumDialog.AlbumAdapter.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    if (z) {
                        FlickrPhotoAlbumDialog.this.checkedInfo[i] = true;
                    } else {
                        FlickrPhotoAlbumDialog.this.checkedInfo[i] = false;
                    }
                }
            });
            final RadioButton radioButton = (RadioButton) view.findViewById(C0000R.id.album_radio);
            radioButton.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.estrongs.android.pop.spfs.dialog.FlickrPhotoAlbumDialog.AlbumAdapter.2
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    if (z) {
                        AlbumAdapter.this.cancelAllRadio();
                        FlickrPhotoAlbumDialog.this.new_album_radio.setChecked(false);
                        if (z) {
                            FlickrPhotoAlbumDialog.this.checkedInfo[i] = true;
                        }
                        AlbumAdapter.this.notifyDataSetChanged();
                    }
                }
            });
            if (FlickrPhotoAlbumDialog.this.isRadio) {
                radioButton.setVisibility(0);
                checkBox.setVisibility(8);
            }
            if (FlickrPhotoAlbumDialog.this.isRadio) {
                if (FlickrPhotoAlbumDialog.this.checkedInfo[i]) {
                    radioButton.setChecked(true);
                } else {
                    radioButton.setChecked(false);
                }
            } else if (FlickrPhotoAlbumDialog.this.checkedInfo[i]) {
                checkBox.setChecked(true);
            } else {
                checkBox.setChecked(false);
            }
            view.setOnClickListener(new View.OnClickListener() { // from class: com.estrongs.android.pop.spfs.dialog.FlickrPhotoAlbumDialog.AlbumAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (FlickrPhotoAlbumDialog.this.isRadio) {
                        radioButton.setChecked(true);
                    } else if (checkBox.isChecked()) {
                        checkBox.setChecked(false);
                    } else {
                        checkBox.setChecked(true);
                    }
                }
            });
            return view;
        }
    }

    /* loaded from: classes.dex */
    public interface AlbumOptionCallback {
        void setAlbum(List<Album> list, List<Album> list2, List<Album> list3, boolean z, String str);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [com.estrongs.android.pop.spfs.dialog.FlickrPhotoAlbumDialog$1] */
    public FlickrPhotoAlbumDialog(final Context context, AlbumOptionCallback albumOptionCallback, final String str, List<Album> list, List<Album> list2) {
        super(context);
        this.mAocb = null;
        this.selectedList = new ArrayList();
        this.checkedInfo = null;
        this.isRadio = false;
        this.mAocb = albumOptionCallback;
        setTitle(C0000R.string.album_setting);
        this.albumList = list;
        this.allAlbumList = list2;
        this.factory = e.a(context);
        setContentView(this.factory.inflate(C0000R.layout.flickr_photo_album, (ViewGroup) null));
        final ListView listView = (ListView) findViewById(C0000R.id.album_list);
        final ProgressBar progressBar = (ProgressBar) findViewById(C0000R.id.scan_progress);
        final View findViewById = findViewById(C0000R.id.album_view);
        progressBar.setVisibility(0);
        findViewById.setVisibility(4);
        final AlbumAdapter albumAdapter = new AlbumAdapter();
        if (ak.ai(str)) {
            this.isRadio = true;
        }
        new AsyncTask<Void, Void, Void>() { // from class: com.estrongs.android.pop.spfs.dialog.FlickrPhotoAlbumDialog.1
            boolean result = false;

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public Void doInBackground(Void... voidArr) {
                try {
                    if (FlickrPhotoAlbumDialog.this.allAlbumList == null) {
                        FlickrPhotoAlbumDialog.this.allAlbumList = PhotoInfoManager.getAllAlbums(str);
                    }
                    if (FlickrPhotoAlbumDialog.this.albumList == null) {
                        FlickrPhotoAlbumDialog.this.albumList = new ArrayList();
                    }
                    int size = FlickrPhotoAlbumDialog.this.allAlbumList.size();
                    FlickrPhotoAlbumDialog.this.checkedInfo = new boolean[size];
                    for (int i = 0; i < size; i++) {
                        if (FlickrPhotoAlbumDialog.this.albumContains(FlickrPhotoAlbumDialog.this.albumList, (Album) FlickrPhotoAlbumDialog.this.allAlbumList.get(i))) {
                            FlickrPhotoAlbumDialog.this.checkedInfo[i] = true;
                        } else {
                            FlickrPhotoAlbumDialog.this.checkedInfo[i] = false;
                        }
                    }
                    this.result = true;
                    return null;
                } catch (AlbumException e) {
                    e.printStackTrace();
                    return null;
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // android.os.AsyncTask
            public void onPostExecute(Void r3) {
                if (!this.result) {
                    a.a(FlickrPhotoAlbumDialog.this.mContext, C0000R.string.flickr_album_load_failed);
                    FlickrPhotoAlbumDialog.this.dismiss();
                } else {
                    progressBar.setVisibility(8);
                    findViewById.setVisibility(0);
                    listView.setAdapter((ListAdapter) albumAdapter);
                    albumAdapter.notifyDataSetChanged();
                }
            }
        }.execute(new Void[0]);
        final CheckBox checkBox = (CheckBox) findViewById(C0000R.id.new_album_check);
        this.new_album_radio = (RadioButton) findViewById(C0000R.id.new_album_radio);
        final EditText editText = (EditText) findViewById(C0000R.id.new_album_name);
        if (this.isRadio) {
            checkBox.setVisibility(8);
            this.new_album_radio.setVisibility(0);
        }
        this.new_album_radio.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.estrongs.android.pop.spfs.dialog.FlickrPhotoAlbumDialog.2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    albumAdapter.cancelAllRadio();
                    albumAdapter.notifyDataSetChanged();
                }
            }
        });
        setConfirmButton(getString(C0000R.string.confirm_ok), new DialogInterface.OnClickListener() { // from class: com.estrongs.android.pop.spfs.dialog.FlickrPhotoAlbumDialog.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                if (progressBar.getVisibility() == 0) {
                    return;
                }
                if (!FlickrPhotoAlbumDialog.this.isRadio ? checkBox.isChecked() : FlickrPhotoAlbumDialog.this.new_album_radio.isChecked()) {
                    if ("".equals(editText.getText().toString().trim())) {
                        a.a(context, C0000R.string.privacy_customize_album_empty);
                        return;
                    }
                }
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                FlickrPhotoAlbumDialog.this.selectedList.clear();
                for (int i2 = 0; i2 < FlickrPhotoAlbumDialog.this.checkedInfo.length; i2++) {
                    if (FlickrPhotoAlbumDialog.this.checkedInfo[i2]) {
                        FlickrPhotoAlbumDialog.this.selectedList.add(FlickrPhotoAlbumDialog.this.allAlbumList.get(i2));
                    }
                }
                for (Album album : FlickrPhotoAlbumDialog.this.selectedList) {
                    if (!FlickrPhotoAlbumDialog.this.albumContains(FlickrPhotoAlbumDialog.this.albumList, album)) {
                        arrayList.add(album);
                    }
                }
                for (Album album2 : FlickrPhotoAlbumDialog.this.albumList) {
                    if (!FlickrPhotoAlbumDialog.this.albumContains(FlickrPhotoAlbumDialog.this.selectedList, album2)) {
                        arrayList2.add(album2);
                    }
                }
                FlickrPhotoAlbumDialog.this.mAocb.setAlbum(arrayList, arrayList2, FlickrPhotoAlbumDialog.this.selectedList, FlickrPhotoAlbumDialog.this.isRadio ? FlickrPhotoAlbumDialog.this.new_album_radio.isChecked() : checkBox.isChecked(), editText.getText().toString());
                FlickrPhotoAlbumDialog.this.dismiss();
            }
        });
        setCancelButton(getString(C0000R.string.confirm_cancel), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean albumContains(List<Album> list, Album album) {
        if (list == null || album == null || list.size() < 0) {
            return false;
        }
        Iterator<Album> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().id.equals(album.id)) {
                return true;
            }
        }
        return false;
    }
}

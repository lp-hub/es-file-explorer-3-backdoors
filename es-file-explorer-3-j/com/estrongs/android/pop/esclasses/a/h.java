package com.estrongs.android.pop.esclasses.a;

import android.util.SparseArray;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class h {
    public static SparseArray<Object> a() {
        SparseArray<Object> sparseArray = new SparseArray<>(9);
        sparseArray.put(C0000R.string.action_select, 0);
        sparseArray.put(C0000R.string.app_zip_viewer, 1);
        sparseArray.put(C0000R.string.es_share_name, 2);
        sparseArray.put(C0000R.string.app_note_editor, 3);
        sparseArray.put(C0000R.string.app_media_player, 4);
        sparseArray.put(C0000R.string.app_downloader, 5);
        sparseArray.put(C0000R.string.app_name, 6);
        sparseArray.put(C0000R.string.select_device_to_share, 7);
        sparseArray.put(C0000R.string.app_image_browser, 8);
        return sparseArray;
    }

    public static String a(int i) {
        return new String[]{"Select___ES Zip Viewer___Send by LAN___ES Note Editor___ES Media Player___ES Downloader___ES File Explorer___Select a device to send___ES Image Browser"}[i];
    }
}

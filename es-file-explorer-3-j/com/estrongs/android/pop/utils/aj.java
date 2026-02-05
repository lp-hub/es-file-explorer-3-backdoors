package com.estrongs.android.pop.utils;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.provider.MediaStore;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.netfs.NetFileInfo;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.ew;
import com.estrongs.fs.FileSystemException;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class aj {
    public static com.estrongs.android.ui.b.aq a(Activity activity, com.estrongs.android.ui.pcs.v vVar) {
        Boolean[] boolArr = {true};
        com.estrongs.android.ui.b.aq f = new com.estrongs.android.ui.b.aq(activity).a(C0000R.string.cloud_share_title).b(C0000R.string.pcs_share_login).d(C0000R.string.action_login, new at(activity, vVar, boolArr)).e(C0000R.string.register, new ar(activity, vVar, boolArr)).f(C0000R.string.toolbar_directly, new aq(activity, vVar, boolArr));
        f.a(new au(boolArr, activity));
        f.b();
        com.estrongs.android.util.a a2 = com.estrongs.android.util.a.a();
        if (a2 != null) {
            a2.b("PCS_Home_Page_UV", "PCS_Home_Page_UV");
        }
        return f;
    }

    private static File a() {
        File file = new File(com.estrongs.android.pop.a.g);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static void a(Activity activity, com.estrongs.fs.g gVar) {
        String u = activity instanceof FileExplorerActivity ? ((FileExplorerActivity) activity).u() : null;
        if (com.estrongs.android.util.ak.aJ(u)) {
            com.estrongs.android.ui.view.z.a(activity, C0000R.string.bluetooth_rename_error, 1).show();
            return;
        }
        com.estrongs.android.ui.b.bv bvVar = new com.estrongs.android.ui.b.bv(activity, activity.getString(C0000R.string.action_rename), gVar.getName());
        bvVar.a(new ak(activity, gVar, u));
        bvVar.b(gVar.getFileType().b());
        bvVar.a(true);
        bvVar.show();
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02e1  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02e4  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02fe  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x03d0  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0427  */
    /* JADX WARN: Removed duplicated region for block: B:208:0x042e  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x022f  */
    @TargetApi(11)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(Activity activity, String str) {
        String str2;
        Cursor cursor;
        Uri uri;
        Uri uri2;
        Uri uri3;
        String str3;
        String str4;
        List<ResolveInfo> queryIntentActivities;
        boolean z;
        String type;
        Cursor cursor2;
        String str5;
        Cursor cursor3;
        Uri uri4;
        Cursor cursor4;
        Uri uri5;
        if (str == null || str.length() == 0) {
            return;
        }
        if (com.estrongs.android.util.ak.aP(str)) {
            if (com.estrongs.fs.impl.i.b.n(str)) {
                if (!com.estrongs.android.util.ak.aq(str) || com.estrongs.android.ui.pcs.aw.a().c()) {
                    b(activity, str);
                    return;
                }
                an anVar = new an(activity, str);
                if ("临时用户".equals(com.estrongs.android.util.ak.x(str))) {
                    com.estrongs.android.ui.pcs.a aVar = new com.estrongs.android.ui.pcs.a(activity);
                    aVar.a(anVar);
                    aVar.a();
                    return;
                } else {
                    com.estrongs.android.ui.pcs.d dVar = new com.estrongs.android.ui.pcs.d(activity);
                    dVar.a(anVar);
                    dVar.a();
                    return;
                }
            }
            com.estrongs.fs.g j = com.estrongs.fs.d.a(activity).j(str);
            try {
                String trim = j.getName().replaceAll("[@\\/:*?\"<>|()\u3000 ]", "_").trim();
                if ("".equals(trim) || !com.estrongs.fs.c.d.f(trim)) {
                    trim = "download_" + new SimpleDateFormat("yyyyMMdd_HHmmss_SSS").format(new Date());
                }
                if (com.estrongs.android.util.ak.au(str)) {
                    trim = trim + PhotoInfoManager.getPhotoExtension(j.getPath());
                }
                j.putExtra("item_paste_name", trim);
            } catch (PhotoInfoException e) {
                e.printStackTrace();
            }
            com.estrongs.fs.g j2 = com.estrongs.fs.d.a(activity).j(a().getAbsolutePath());
            com.estrongs.fs.b.i iVar = new com.estrongs.fs.b.i(com.estrongs.fs.d.a(activity), j, j2);
            iVar.c(false);
            iVar.processData.k = false;
            iVar.b(false);
            iVar.setCanHide(false);
            iVar.setDescription(String.format(activity.getString(C0000R.string.copy_task_description), com.estrongs.android.util.ak.bv(j2.getAbsolutePath())));
            iVar.addTaskStatusChangeListener(new ao(activity, j2, j));
            new ew(activity, activity.getString(C0000R.string.progress_copying), iVar).a(activity.getString(C0000R.string.please_wait_message), (String) null).show();
            iVar.execute();
            return;
        }
        String bo = com.estrongs.android.util.ak.bo(str);
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        Uri fromFile = Uri.fromFile(new File(str));
        String b2 = com.estrongs.fs.c.d.b(bo);
        String str6 = null;
        if (a(b2)) {
            str2 = null;
        } else {
            String B = com.estrongs.android.util.av.B(com.estrongs.android.util.av.a(bo));
            str2 = (B == null && (B = com.estrongs.android.util.av.N(bo)) != null && B.equals("*/*")) ? null : B;
        }
        try {
            cursor = activity.getContentResolver().query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=?", new String[]{bo}, null);
        } catch (Exception e2) {
            e = e2;
            cursor = null;
            uri = fromFile;
        } catch (Throwable th) {
            th = th;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
        try {
            if (cursor != null) {
                try {
                    try {
                    } catch (Exception e3) {
                        e = e3;
                        uri = fromFile;
                    }
                    if (cursor.getCount() > 0) {
                        cursor.moveToFirst();
                        uri = Uri.parse(MediaStore.Images.Media.EXTERNAL_CONTENT_URI.toString() + "/" + cursor.getInt(0));
                        if (str2 != null) {
                            try {
                            } catch (Exception e4) {
                                e = e4;
                                e.printStackTrace();
                                if (cursor != null) {
                                    cursor.close();
                                    uri2 = uri;
                                    if (str6 == null) {
                                    }
                                    if (str6 == null) {
                                    }
                                    if (str3 == null) {
                                    }
                                    str4 = str3;
                                    if (str4 == null) {
                                    }
                                    if (str4 == null) {
                                    }
                                    if (str4 != null) {
                                    }
                                    intent.putExtra("android.intent.extra.STREAM", uri3);
                                    queryIntentActivities = activity.getPackageManager().queryIntentActivities(intent, 0);
                                    if (queryIntentActivities != null) {
                                    }
                                    z = false;
                                    if (!z) {
                                    }
                                    activity.startActivity(Intent.createChooser(intent, activity.getString(C0000R.string.action_share_via)));
                                    return;
                                }
                                uri2 = uri;
                                if (str6 == null) {
                                }
                                if (str6 == null) {
                                }
                                if (str3 == null) {
                                }
                                str4 = str3;
                                if (str4 == null) {
                                }
                                if (str4 == null) {
                                }
                                if (str4 != null) {
                                }
                                intent.putExtra("android.intent.extra.STREAM", uri3);
                                queryIntentActivities = activity.getPackageManager().queryIntentActivities(intent, 0);
                                if (queryIntentActivities != null) {
                                }
                                z = false;
                                if (!z) {
                                }
                                activity.startActivity(Intent.createChooser(intent, activity.getString(C0000R.string.action_share_via)));
                                return;
                            }
                            if (str2.startsWith("image/")) {
                                str6 = str2;
                                if (cursor != null) {
                                    cursor.close();
                                    uri2 = uri;
                                    if (str6 == null) {
                                        try {
                                            try {
                                                cursor4 = activity.getContentResolver().query(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=?", new String[]{bo}, null);
                                                if (cursor4 != null) {
                                                    try {
                                                        if (cursor4.getCount() > 0) {
                                                            cursor4.moveToFirst();
                                                            uri5 = Uri.parse(MediaStore.Audio.Media.EXTERNAL_CONTENT_URI.toString() + "/" + cursor4.getInt(0));
                                                            if (str2 != null) {
                                                                try {
                                                                    if (str2.startsWith("audio/")) {
                                                                        str6 = str2;
                                                                        uri2 = uri5;
                                                                    }
                                                                } catch (Exception e5) {
                                                                    e = e5;
                                                                    e.printStackTrace();
                                                                    if (cursor4 != null) {
                                                                        cursor4.close();
                                                                        uri2 = uri5;
                                                                    } else {
                                                                        uri2 = uri5;
                                                                    }
                                                                    if (str6 == null) {
                                                                    }
                                                                    if (str3 == null) {
                                                                    }
                                                                    str4 = str3;
                                                                    if (str4 == null) {
                                                                    }
                                                                    if (str4 == null) {
                                                                    }
                                                                    if (str4 != null) {
                                                                    }
                                                                    intent.putExtra("android.intent.extra.STREAM", uri3);
                                                                    queryIntentActivities = activity.getPackageManager().queryIntentActivities(intent, 0);
                                                                    if (queryIntentActivities != null) {
                                                                    }
                                                                    z = false;
                                                                    if (!z) {
                                                                    }
                                                                    activity.startActivity(Intent.createChooser(intent, activity.getString(C0000R.string.action_share_via)));
                                                                    return;
                                                                }
                                                            }
                                                            if (b2.equalsIgnoreCase("3gpp")) {
                                                                str6 = "audio/3gpp";
                                                                uri2 = uri5;
                                                            } else if (b2.equalsIgnoreCase("3gp")) {
                                                                str6 = "audio/3gp";
                                                                uri2 = uri5;
                                                            } else {
                                                                str6 = "audio/*";
                                                                uri2 = uri5;
                                                            }
                                                        }
                                                    } catch (Exception e6) {
                                                        e = e6;
                                                        uri5 = uri2;
                                                    }
                                                }
                                                if (cursor4 != null) {
                                                    cursor4.close();
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                                if (cursor != null) {
                                                    cursor.close();
                                                }
                                                throw th;
                                            }
                                        } catch (Exception e7) {
                                            e = e7;
                                            cursor4 = null;
                                            uri5 = uri2;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            cursor = null;
                                            if (cursor != null) {
                                            }
                                            throw th;
                                        }
                                    }
                                    if (str6 == null) {
                                        try {
                                            cursor3 = activity.getContentResolver().query(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, "_data=?", new String[]{bo}, null);
                                            if (cursor3 != null) {
                                                try {
                                                    try {
                                                        if (cursor3.getCount() > 0) {
                                                            cursor3.moveToFirst();
                                                            uri4 = Uri.parse(MediaStore.Video.Media.EXTERNAL_CONTENT_URI.toString() + "/" + cursor3.getInt(0));
                                                            if (str2 != null) {
                                                                try {
                                                                    if (str2.startsWith("video/")) {
                                                                        str3 = str2;
                                                                        if (cursor3 != null) {
                                                                            cursor3.close();
                                                                            uri3 = uri4;
                                                                        } else {
                                                                            uri3 = uri4;
                                                                        }
                                                                    }
                                                                } catch (Exception e8) {
                                                                    e = e8;
                                                                    e.printStackTrace();
                                                                    if (cursor3 != null) {
                                                                        cursor3.close();
                                                                        str3 = str6;
                                                                        uri3 = uri4;
                                                                    } else {
                                                                        str3 = str6;
                                                                        uri3 = uri4;
                                                                    }
                                                                    if (str3 == null) {
                                                                    }
                                                                    str4 = str3;
                                                                    if (str4 == null) {
                                                                    }
                                                                    if (str4 == null) {
                                                                    }
                                                                    if (str4 != null) {
                                                                    }
                                                                    intent.putExtra("android.intent.extra.STREAM", uri3);
                                                                    queryIntentActivities = activity.getPackageManager().queryIntentActivities(intent, 0);
                                                                    if (queryIntentActivities != null) {
                                                                    }
                                                                    z = false;
                                                                    if (!z) {
                                                                    }
                                                                    activity.startActivity(Intent.createChooser(intent, activity.getString(C0000R.string.action_share_via)));
                                                                    return;
                                                                }
                                                            }
                                                            str3 = "video/*";
                                                            if (cursor3 != null) {
                                                            }
                                                        }
                                                    } catch (Exception e9) {
                                                        e = e9;
                                                        uri4 = uri2;
                                                    }
                                                } catch (Throwable th4) {
                                                    th = th4;
                                                    if (cursor3 != null) {
                                                        cursor3.close();
                                                    }
                                                    throw th;
                                                }
                                            }
                                            uri4 = uri2;
                                            str3 = str6;
                                            if (cursor3 != null) {
                                            }
                                        } catch (Exception e10) {
                                            e = e10;
                                            cursor3 = null;
                                            uri4 = uri2;
                                        } catch (Throwable th5) {
                                            th = th5;
                                            cursor3 = null;
                                        }
                                    } else {
                                        String str7 = str6;
                                        uri3 = uri2;
                                        str3 = str7;
                                    }
                                    if (str3 == null || com.estrongs.android.pop.p.a() < 11) {
                                        str4 = str3;
                                    } else {
                                        Cursor cursor5 = null;
                                        try {
                                            cursor2 = activity.getContentResolver().query(MediaStore.Files.getContentUri("external"), new String[]{"_id", NetFileInfo.MIME_TYPE}, "_data=?", new String[]{bo}, null);
                                        } catch (Exception e11) {
                                            e = e11;
                                            cursor2 = null;
                                            str5 = str3;
                                        } catch (Throwable th6) {
                                            th = th6;
                                            if (cursor5 != null) {
                                            }
                                            throw th;
                                        }
                                        if (cursor2 != null) {
                                            try {
                                                try {
                                                } catch (Exception e12) {
                                                    e = e12;
                                                    str5 = str3;
                                                }
                                                if (cursor2.getCount() > 0) {
                                                    cursor2.moveToFirst();
                                                    cursor2.getInt(0);
                                                    str5 = cursor2.getString(1);
                                                    try {
                                                        MediaStore.Files.getContentUri("external").toString();
                                                        if (cursor2 != null) {
                                                            cursor2.close();
                                                            str4 = str5;
                                                        }
                                                    } catch (Exception e13) {
                                                        e = e13;
                                                        e.printStackTrace();
                                                        if (cursor2 != null) {
                                                            cursor2.close();
                                                            str4 = str5;
                                                            if (str4 == null) {
                                                            }
                                                            if (str4 == null) {
                                                            }
                                                            if (str4 != null) {
                                                            }
                                                            intent.putExtra("android.intent.extra.STREAM", uri3);
                                                            queryIntentActivities = activity.getPackageManager().queryIntentActivities(intent, 0);
                                                            if (queryIntentActivities != null) {
                                                            }
                                                            z = false;
                                                            if (!z) {
                                                            }
                                                            activity.startActivity(Intent.createChooser(intent, activity.getString(C0000R.string.action_share_via)));
                                                            return;
                                                        }
                                                        str4 = str5;
                                                        if (str4 == null) {
                                                        }
                                                        if (str4 == null) {
                                                        }
                                                        if (str4 != null) {
                                                        }
                                                        intent.putExtra("android.intent.extra.STREAM", uri3);
                                                        queryIntentActivities = activity.getPackageManager().queryIntentActivities(intent, 0);
                                                        if (queryIntentActivities != null) {
                                                        }
                                                        z = false;
                                                        if (!z) {
                                                        }
                                                        activity.startActivity(Intent.createChooser(intent, activity.getString(C0000R.string.action_share_via)));
                                                        return;
                                                    }
                                                    str4 = str5;
                                                }
                                            } catch (Throwable th7) {
                                                th = th7;
                                                cursor5 = cursor2;
                                                if (cursor5 != null) {
                                                    cursor5.close();
                                                }
                                                throw th;
                                            }
                                        }
                                        str5 = str3;
                                        if (cursor2 != null) {
                                        }
                                        str4 = str5;
                                    }
                                    if (str4 == null) {
                                        str4 = str2;
                                    }
                                    if (str4 == null) {
                                        str4 = b(bo);
                                    }
                                    if (str4 != null) {
                                        intent.setType(str4);
                                    }
                                    intent.putExtra("android.intent.extra.STREAM", uri3);
                                    queryIntentActivities = activity.getPackageManager().queryIntentActivities(intent, 0);
                                    if (queryIntentActivities != null) {
                                        int i = 0;
                                        while (true) {
                                            int i2 = i;
                                            if (i2 >= queryIntentActivities.size()) {
                                                break;
                                            }
                                            if (queryIntentActivities.get(i2).activityInfo.applicationInfo.packageName.toLowerCase().indexOf("bluetooth") != -1) {
                                                z = true;
                                                break;
                                            }
                                            i = i2 + 1;
                                        }
                                        if (!z && (type = intent.getType()) != null) {
                                            if (!type.startsWith("image/")) {
                                                intent.setType("image/*");
                                            } else if (type.startsWith("audio/")) {
                                                intent.setType("audio/*");
                                            } else if (type.startsWith("video/")) {
                                                intent.setType("video/*");
                                            } else {
                                                intent.setType("application/*");
                                            }
                                        }
                                        activity.startActivity(Intent.createChooser(intent, activity.getString(C0000R.string.action_share_via)));
                                        return;
                                    }
                                    z = false;
                                    if (!z) {
                                        if (!type.startsWith("image/")) {
                                        }
                                    }
                                    activity.startActivity(Intent.createChooser(intent, activity.getString(C0000R.string.action_share_via)));
                                    return;
                                }
                                uri2 = uri;
                                if (str6 == null) {
                                }
                                if (str6 == null) {
                                }
                                if (str3 == null) {
                                }
                                str4 = str3;
                                if (str4 == null) {
                                }
                                if (str4 == null) {
                                }
                                if (str4 != null) {
                                }
                                intent.putExtra("android.intent.extra.STREAM", uri3);
                                queryIntentActivities = activity.getPackageManager().queryIntentActivities(intent, 0);
                                if (queryIntentActivities != null) {
                                }
                                z = false;
                                if (!z) {
                                }
                                activity.startActivity(Intent.createChooser(intent, activity.getString(C0000R.string.action_share_via)));
                                return;
                            }
                        }
                        str6 = "image/*";
                        if (cursor != null) {
                        }
                        uri2 = uri;
                        if (str6 == null) {
                        }
                        if (str6 == null) {
                        }
                        if (str3 == null) {
                        }
                        str4 = str3;
                        if (str4 == null) {
                        }
                        if (str4 == null) {
                        }
                        if (str4 != null) {
                        }
                        intent.putExtra("android.intent.extra.STREAM", uri3);
                        queryIntentActivities = activity.getPackageManager().queryIntentActivities(intent, 0);
                        if (queryIntentActivities != null) {
                        }
                        z = false;
                        if (!z) {
                        }
                        activity.startActivity(Intent.createChooser(intent, activity.getString(C0000R.string.action_share_via)));
                        return;
                    }
                } catch (Throwable th8) {
                    th = th8;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            activity.startActivity(Intent.createChooser(intent, activity.getString(C0000R.string.action_share_via)));
            return;
        } catch (ActivityNotFoundException e14) {
            e14.printStackTrace();
            return;
        }
        uri = fromFile;
        if (cursor != null) {
        }
        uri2 = uri;
        if (str6 == null) {
        }
        if (str6 == null) {
        }
        if (str3 == null) {
        }
        str4 = str3;
        if (str4 == null) {
        }
        if (str4 == null) {
        }
        if (str4 != null) {
        }
        intent.putExtra("android.intent.extra.STREAM", uri3);
        queryIntentActivities = activity.getPackageManager().queryIntentActivities(intent, 0);
        if (queryIntentActivities != null) {
        }
        z = false;
        if (!z) {
        }
    }

    public static void a(Activity activity, String str, DialogInterface.OnDismissListener onDismissListener) {
        String bw = com.estrongs.android.util.ak.bw(str);
        com.estrongs.android.ui.pcs.aw a2 = com.estrongs.android.ui.pcs.aw.a();
        if (!com.estrongs.android.util.ak.aq(bw) || a2.c()) {
            try {
                new com.estrongs.android.ui.b.y(activity, bw, onDismissListener).a();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static void a(Activity activity, List<String> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        boolean aP = com.estrongs.android.util.ak.aP(list.get(0));
        boolean au = com.estrongs.android.util.ak.au(list.get(0));
        if (!aP) {
            if (list.size() > 100) {
                com.estrongs.android.ui.view.z.a(activity, activity.getString(C0000R.string.share_too_many_files), 0).show();
                return;
            }
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND_MULTIPLE");
            intent.setType("*/*");
            if (a(list)) {
                intent.setType("image/*");
            }
            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(Uri.fromFile(new File(it.next())));
            }
            intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
            try {
                activity.startActivity(Intent.createChooser(intent, activity.getString(C0000R.string.action_share_via)));
                return;
            } catch (ActivityNotFoundException e) {
                e.printStackTrace();
                return;
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        com.estrongs.fs.g j = com.estrongs.fs.d.a(activity).j(a().getAbsolutePath());
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            com.estrongs.fs.g j2 = com.estrongs.fs.d.a(activity).j(it2.next());
            try {
                String trim = j2.getName().replaceAll("[@\\/:*?\"<>|()\u3000 ]", "_").trim();
                if ("".equals(trim) || !com.estrongs.fs.c.d.f(trim)) {
                    trim = "download_" + new SimpleDateFormat("yyyyMMdd_HHmmss_SSS").format(new Date());
                }
                if (au) {
                    trim = trim + PhotoInfoManager.getPhotoExtension(j2.getPath());
                }
                j2.putExtra("item_paste_name", trim);
                arrayList2.add(j2);
                arrayList3.add(new File(j.getAbsolutePath(), trim).getAbsolutePath());
            } catch (PhotoInfoException e3) {
                e3.printStackTrace();
            }
        }
        com.estrongs.fs.b.i iVar = new com.estrongs.fs.b.i(com.estrongs.fs.d.a(activity), arrayList2, j);
        iVar.processData.k = false;
        iVar.b(false);
        iVar.setCanHide(false);
        iVar.setDescription(String.format(activity.getString(C0000R.string.copy_task_description), com.estrongs.android.util.ak.bv(j.getAbsolutePath())));
        iVar.addTaskStatusChangeListener(new am(activity, arrayList3));
        new ew(activity, activity.getString(C0000R.string.progress_copying), iVar).a(activity.getString(C0000R.string.please_wait_message), (String) null).show();
        iVar.execute();
    }

    public static void a(Activity activity, List<com.estrongs.fs.g> list, com.estrongs.fs.g gVar, boolean z) {
        a(activity, list, gVar, z, false);
    }

    public static void a(Activity activity, List<com.estrongs.fs.g> list, com.estrongs.fs.g gVar, boolean z, boolean z2) {
        a(activity, list, gVar, z, z2, (com.estrongs.a.a.k) null);
    }

    public static void a(Activity activity, List<com.estrongs.fs.g> list, com.estrongs.fs.g gVar, boolean z, boolean z2, com.estrongs.a.a.k kVar) {
        if (z) {
            az azVar = new az(com.estrongs.fs.d.a(activity), list, gVar, gVar, activity);
            azVar.b(z2);
            azVar.setDescription(String.format(activity.getString(C0000R.string.copy_task_description), com.estrongs.android.util.ak.bv(gVar.getAbsolutePath())));
            azVar.a(true);
            if (kVar != null) {
                azVar.addTaskStatusChangeListener(kVar);
            }
            new ew(activity, activity.getString(C0000R.string.progress_copying), azVar).show();
            azVar.execute();
            return;
        }
        if (!com.estrongs.android.util.ak.ao(gVar.getPath())) {
            c(activity, list, gVar, z2);
            return;
        }
        if (com.estrongs.android.ui.pcs.aw.a().c()) {
            c(activity, list, gVar, z2);
            return;
        }
        bb bbVar = new bb(activity, list, gVar, z2);
        com.estrongs.android.ui.pcs.a aVar = new com.estrongs.android.ui.pcs.a(activity);
        aVar.a();
        aVar.a(bbVar);
    }

    public static void a(Activity activity, List<com.estrongs.fs.g> list, com.estrongs.fs.g gVar, boolean z, boolean z2, com.estrongs.a.a.k kVar, boolean z3) {
        if (list == null || list.size() == 0) {
            return;
        }
        if (!z3) {
            a(activity, list, gVar, z, z2, kVar);
            return;
        }
        com.estrongs.android.ui.b.as asVar = new com.estrongs.android.ui.b.as(activity, list, gVar, z);
        asVar.setConfirmButton(activity.getString(C0000R.string.confirm_ok), new ax(activity, list, gVar, z, z2, kVar));
        asVar.setCancelButton(activity.getString(C0000R.string.confirm_cancel), new ay());
        asVar.show();
    }

    public static void a(ESActivity eSActivity, com.estrongs.android.ui.pcs.aw awVar, List<com.estrongs.fs.g> list) {
        String ac = com.estrongs.android.pop.q.a(eSActivity).ac();
        if (ac == null || "".equals(ac)) {
            com.estrongs.android.ui.b.bd bdVar = new com.estrongs.android.ui.b.bd(eSActivity, eSActivity.getString(C0000R.string.pcs_backup_set_path), eSActivity.getString(C0000R.string.pcs_backup_path_hint, new Object[]{Build.MODEL}));
            bdVar.a(new ap(eSActivity, awVar, list));
            bdVar.a();
        } else {
            String str = awVar.h() + "/files/" + ac;
            a((Activity) eSActivity, list, com.estrongs.fs.d.m(str), true);
            if (com.estrongs.fs.a.b.a().g(str) == null && com.estrongs.fs.a.b.a().g(com.estrongs.android.util.ak.bx(str)) == null) {
                com.estrongs.fs.a.b.a().a(new com.estrongs.fs.n(str, false));
            }
        }
    }

    public static void a(ESActivity eSActivity, List<com.estrongs.fs.g> list) {
        String u = eSActivity instanceof FileExplorerActivity ? ((FileExplorerActivity) eSActivity).u() : null;
        if (com.estrongs.android.util.ak.aJ(u)) {
            com.estrongs.android.ui.view.z.a(eSActivity, C0000R.string.bluetooth_rename_error, 1).show();
        } else {
            new com.estrongs.android.ui.b.l(eSActivity, list, u).a();
        }
    }

    public static void a(ESActivity eSActivity, List<com.estrongs.fs.g> list, com.estrongs.fs.g gVar, boolean z) {
        if (list.size() == 0) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (com.estrongs.fs.g gVar2 : list) {
            if (com.estrongs.android.util.ak.au(gVar2.getPath())) {
                if (gVar2.getFileType().a()) {
                    try {
                        List<com.estrongs.fs.g> a2 = com.estrongs.fs.d.a(eSActivity).a(gVar2, false, (com.estrongs.fs.h) new be());
                        for (com.estrongs.fs.g gVar3 : a2) {
                            try {
                                String trim = gVar3.getName().replaceAll("[@\\/:*?\"<>|()\u3000 ]", "_").trim();
                                if ("".equals(trim) || !com.estrongs.fs.c.d.f(trim)) {
                                    trim = "download_" + new SimpleDateFormat("yyyyMMdd_HHmmss_SSS").format(new Date());
                                }
                                gVar3.putExtra("item_paste_name", trim + PhotoInfoManager.getPhotoExtension(gVar3.getPath()));
                            } catch (PhotoInfoException e) {
                                e.printStackTrace();
                            }
                        }
                        arrayList.addAll(a2);
                    } catch (FileSystemException e2) {
                        e2.printStackTrace();
                    }
                } else {
                    try {
                        String trim2 = gVar2.getName().replaceAll("[@\\/:*?\"<>|()\u3000 ]", "_").trim();
                        if ("".equals(trim2) || !com.estrongs.fs.c.d.f(trim2)) {
                            trim2 = "download_" + new SimpleDateFormat("yyyyMMdd_HHmmss_SSS").format(new Date());
                        }
                        gVar2.putExtra("item_paste_name", trim2 + PhotoInfoManager.getPhotoExtension(gVar2.getPath()));
                    } catch (PhotoInfoException e3) {
                        e3.printStackTrace();
                    }
                    arrayList.add(gVar2);
                }
            } else if (gVar2.getFileType().a()) {
                try {
                    arrayList.addAll(com.estrongs.fs.d.a(eSActivity).a(gVar2, false, (com.estrongs.fs.h) new bf()));
                } catch (FileSystemException e4) {
                    e4.printStackTrace();
                }
            } else {
                arrayList.add(gVar2);
            }
        }
        a((Activity) eSActivity, (List<com.estrongs.fs.g>) arrayList, gVar, z);
    }

    public static boolean a(Activity activity, com.estrongs.fs.g gVar, String str, String str2, boolean z, boolean z2) {
        String absolutePath = gVar.getAbsolutePath();
        if (str == null) {
            return false;
        }
        if (com.estrongs.android.util.ak.aU(str2)) {
            com.estrongs.android.pop.q.a(activity).c(absolutePath, str);
            gVar.setName(str);
            return true;
        }
        boolean[] zArr = new boolean[1];
        aw awVar = new aw(activity, gVar, str, absolutePath, zArr, z2);
        if (!z) {
            awVar.run();
            return zArr[0];
        }
        awVar.start();
        if (com.estrongs.android.util.ak.aP(str2)) {
            a.a(activity, (CharSequence) activity.getString(C0000R.string.rename_async_msg, new Object[]{gVar.getName(), str}));
        }
        return true;
    }

    public static boolean a(ESActivity eSActivity, List<com.estrongs.fs.g> list, com.estrongs.a.a.k kVar, br brVar) {
        return new bg(null).a(eSActivity, list, null, kVar, brVar);
    }

    public static boolean a(ESActivity eSActivity, List<com.estrongs.fs.g> list, com.estrongs.android.view.ar arVar) {
        return new bg(null).a(eSActivity, list, arVar, null);
    }

    public static boolean a(ESActivity eSActivity, List<com.estrongs.fs.g> list, com.estrongs.android.view.ar arVar, com.estrongs.a.a.k kVar, int i, String str, boolean z) {
        return new bg(null).a(eSActivity, list, arVar, kVar, null, i, str, z);
    }

    private static boolean a(String str) {
        if (com.estrongs.android.pop.p.a() < 11 && com.estrongs.android.pop.p.a() < 9) {
            for (String str2 : new String[]{"apk", "xml", "rss", "c", "java", "h", "docx", "xlsx", "bat", "exe", "dll", "lib", "pptx", "chm", "esj", "epub", "tar", "rar", "odt", "pgn", "xqf", "gzip", "torrent", "mobi", "prc", "vcf", "ics", "ical", "icalendar", "nzb", "umd"}) {
                if (str.equalsIgnoreCase(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    private static boolean a(List<String> list) {
        for (int i = 0; i < list.size(); i++) {
            if (!com.estrongs.android.util.av.b(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int b(com.estrongs.fs.g gVar) {
        String[] list = new File(gVar.getAbsolutePath()).list(new al());
        int length = list == null ? 0 : list.length;
        gVar.putExtra("item_count", Integer.valueOf(length));
        return length;
    }

    private static String b(String str) {
        return a(com.estrongs.fs.c.d.b(str)) ? "application/*" : (com.estrongs.android.util.av.d(str) || com.estrongs.android.util.av.c(str)) ? "image/*" : com.estrongs.android.util.av.e(str) ? "audio/*" : com.estrongs.android.util.av.f(str) ? "video/*" : com.estrongs.android.util.av.g(str) ? "text/plain" : com.estrongs.android.util.av.B(str) ? "text/html" : com.estrongs.android.util.av.D(str) ? "text/xml" : com.estrongs.android.util.av.y(str) ? "application/msword" : com.estrongs.android.util.av.z(str) ? "application/vnd.ms-excel" : com.estrongs.android.util.av.C(str) ? "application/vnd.ms-powerpoint" : com.estrongs.android.util.av.A(str) ? "application/x-chm" : com.estrongs.android.util.av.m(str) ? "application/pdf" : com.estrongs.android.util.av.o(str) ? "application/epub+zip" : com.estrongs.android.util.av.p(str) ? "application/x-mobipocket-ebook" : com.estrongs.android.util.av.h(str) ? "application/x-rar-compressed" : com.estrongs.android.util.av.n(str) ? "application/esj" : com.estrongs.android.util.av.F(str) ? "audio/vnd.qcelp" : com.estrongs.android.util.av.q(str) ? "application/x-bittorrent" : com.estrongs.android.util.av.v(str) ? "application/x-chess-pgn" : com.estrongs.android.util.av.x(str) ? "application/vnd.oasis.opendocument.text" : com.estrongs.android.util.av.i(str) ? "application/x-shockwave-flash" : com.estrongs.android.util.av.w(str) ? "application/x-nzb" : com.estrongs.android.util.av.E(str) ? "text/calendar" : com.estrongs.android.util.av.r(str) ? "application/umd" : com.estrongs.android.util.av.s(str) ? "application/x-plucker" : (com.estrongs.android.util.av.t(str) || com.estrongs.android.util.av.u(str)) ? "application/x-expandedbook" : "text/*";
    }

    public static void b(Activity activity, String str) {
        a(activity, com.estrongs.android.util.ak.bw(str), (DialogInterface.OnDismissListener) null);
    }

    public static void b(ESActivity eSActivity, List<com.estrongs.fs.g> list) {
        com.estrongs.android.ui.pcs.aw a2 = com.estrongs.android.ui.pcs.aw.a();
        if (a2.c()) {
            a(eSActivity, a2, list);
        } else {
            a(eSActivity, new av(eSActivity, a2, list)).a((DialogInterface.OnDismissListener) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Activity activity, List<com.estrongs.fs.g> list, com.estrongs.fs.g gVar, boolean z) {
        bc bcVar = new bc(com.estrongs.fs.d.a(activity), list, gVar, activity, gVar);
        bcVar.b(z);
        bcVar.setDescription(String.format(activity.getString(C0000R.string.move_task_description), com.estrongs.android.util.ak.bv(gVar.getAbsolutePath())));
        bcVar.a(true);
        new ew(activity, activity.getString(C0000R.string.progress_moving), bcVar).show();
        bcVar.execute();
    }
}

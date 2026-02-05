package com.estrongs.android.pop.utils;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.TypedMap;
import java.io.File;
import java.util.Iterator;

/* loaded from: classes.dex */
public class bt {
    public static void a(String str) {
        try {
            if (str == null) {
                Iterator<String> it = com.estrongs.android.util.ak.a().iterator();
                while (it.hasNext()) {
                    FexApplication.a().sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.fromFile(new File(it.next()))));
                }
                return;
            }
            com.estrongs.android.pop.b.b();
            String bn = com.estrongs.android.util.ak.bn(str);
            if (bn == null) {
                return;
            }
            FexApplication.a().sendBroadcast(new Intent("android.intent.action.MEDIA_MOUNTED", Uri.parse("file://" + bn)));
        } catch (Exception e) {
        }
    }

    public static boolean a() {
        boolean z;
        Cursor query = FexApplication.a().getContentResolver().query(MediaStore.getMediaScannerUri(), new String[]{"volume"}, null, null, null);
        if (query == null) {
            return false;
        }
        if (query.getCount() == 1) {
            query.moveToFirst();
            z = "external".equals(query.getString(0));
        } else {
            z = false;
        }
        query.close();
        return z;
    }

    public static boolean a(TypedMap typedMap) {
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        if (currentTask == null) {
            return true;
        }
        if (!typedMap.getBoolean("updateMediaStore")) {
            if (!typedMap.containsKey("resultUpdatedMediaStore")) {
                return true;
            }
            typedMap.remove("resultUpdatedMediaStore");
            return true;
        }
        IntentFilter intentFilter = new IntentFilter("android.intent.action.MEDIA_SCANNER_FINISHED");
        intentFilter.addDataScheme("file");
        BroadcastReceiver[] broadcastReceiverArr = {new bu(currentTask)};
        FexApplication.a().registerReceiver(broadcastReceiverArr[0], intentFilter);
        if (!a()) {
            a((String) null);
        }
        if (!currentTask.taskStopped()) {
            currentTask.suspend();
        }
        FexApplication.a().unregisterReceiver(broadcastReceiverArr[0]);
        if (currentTask.taskStopped()) {
            typedMap.remove("updateMediaStore");
            return false;
        }
        typedMap.remove("updateMediaStore");
        typedMap.put("resultUpdatedMediaStore", true);
        return true;
    }

    public static void b() {
        a(com.estrongs.android.pop.b.b());
    }

    public static void b(String str) {
        if (str != null) {
            try {
                FexApplication.a().sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.fromFile(new File(str))));
            } catch (Exception e) {
            }
        }
    }
}

package com.baidu.sapi2.share;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.baidu.sapi2.SapiHelper;
import com.baidu.sapi2.log.Logger;
import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ShareReceiver extends BroadcastReceiver {
    static String buildTimeString(ArrayList<String> arrayList) {
        int size = arrayList.size();
        String str = new String();
        int i = 0;
        while (i < size) {
            String str2 = str + arrayList.get(i) + Keystore.getSplit();
            i++;
            str = str2;
        }
        return str.length() > 0 ? str.substring(0, str.length() - 1) : str;
    }

    private static boolean checkValid(Context context, long j) {
        File filesDir = context.getFilesDir();
        if (filesDir == null || !filesDir.exists() || !filesDir.isDirectory()) {
            return true;
        }
        String str = j + "";
        File file = new File(filesDir.getAbsolutePath() + "/" + Keystore.getFileName());
        try {
            ArrayList arrayList = new ArrayList();
            if (file.exists()) {
                String optString = new JSONObject(new String(new byte[(int) file.length()])).optString(Keystore.getTimestamp());
                if (Utils.isValid(optString)) {
                    String[] split = optString.split(Keystore.getSplit());
                    if (split.length > 0) {
                        int length = split.length;
                        for (int i = 0; i < length; i++) {
                            arrayList.add(split[i]);
                            if (str.equals(split[i])) {
                                arrayList.clear();
                                return false;
                            }
                        }
                        int cacheSize = Keystore.getCacheSize() - length;
                        if (cacheSize <= 0) {
                            Collections.sort(arrayList);
                            for (int i2 = 0; i2 < (-cacheSize) + 1; i2++) {
                                arrayList.remove(0);
                            }
                        }
                    }
                }
                file.deleteOnExit();
            }
            arrayList.add(str);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(Keystore.getTimestamp(), buildTimeString(arrayList));
            FileWriter fileWriter = new FileWriter(file);
            fileWriter.write(jSONObject.toString());
            fileWriter.flush();
            fileWriter.close();
            return true;
        } catch (Exception e) {
            return true;
        }
    }

    private void handleReceiver(Context context, Bundle bundle) {
        boolean z = false;
        String string = bundle.getString(Keystore.getAction());
        if (Utils.isValid(string)) {
            String decrypt = NativeCrypto.decrypt(context, string);
            if (Utils.isValid(decrypt)) {
                String string2 = bundle.getString(Keystore.getFrom());
                if (Utils.isValid(string2)) {
                    String packageName = context.getPackageName();
                    String decrypt2 = NativeCrypto.decrypt(context, string2);
                    if (Utils.isValid(decrypt2)) {
                        if (Utils.isValid(packageName) && packageName.equals(decrypt2)) {
                            return;
                        }
                        String string3 = bundle.getString(Keystore.getReceiver());
                        if (string3 != null) {
                            String decrypt3 = NativeCrypto.decrypt(context, string3);
                            if (!Utils.isValid(decrypt3)) {
                                return;
                            }
                            String[] split = decrypt3.split(Keystore.getSplit());
                            if (split != null) {
                                int length = split.length;
                                int i = 0;
                                while (true) {
                                    if (i >= length) {
                                        break;
                                    }
                                    if (packageName.equals(split[i])) {
                                        z = true;
                                        break;
                                    }
                                    i++;
                                }
                                if (!z) {
                                    return;
                                }
                            }
                        }
                        String string4 = bundle.getString(Keystore.getTimestamp());
                        if (Utils.isValid(string4)) {
                            try {
                                long parseLong = Long.parseLong(NativeCrypto.decrypt(context, string4));
                                if (checkValid(context, parseLong)) {
                                    String string5 = bundle.getString(Keystore.getData());
                                    HashMap<String, String> hashMap = new HashMap<>();
                                    if (Utils.isValid(string5)) {
                                        String decrypt4 = NativeCrypto.decrypt(context, string5);
                                        if (Utils.isValid(decrypt4)) {
                                            try {
                                                JSONObject jSONObject = new JSONObject(decrypt4);
                                                Iterator<String> keys = jSONObject.keys();
                                                while (keys.hasNext()) {
                                                    String next = keys.next();
                                                    hashMap.put(next, jSONObject.getString(next));
                                                }
                                            } catch (JSONException e) {
                                                Logger.w(e);
                                            }
                                        }
                                    }
                                    ShareModel shareModel = new ShareModel();
                                    shareModel.mAction = decrypt;
                                    shareModel.mFrom = decrypt2;
                                    shareModel.mTimestamp = parseLong;
                                    shareModel.mData = hashMap;
                                    ShareAssistant.getInstance(context).onShareEvent(shareModel);
                                }
                            } catch (Exception e2) {
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Bundle extras;
        try {
            String action = intent.getAction();
            if ((action == null || Keystore.getIntentAction() == null || action.equals(Keystore.getIntentAction()) || action.equals(Keystore.getNewIntentAction())) && (extras = intent.getExtras()) != null && SapiHelper.getInstance().isShare()) {
                handleReceiver(context, extras);
            }
        } catch (Throwable th) {
            Logger.w(th);
        }
    }
}

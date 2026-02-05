package com.estrongs.android.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.estrongs.android.pop.C0000R;
import com.estrongs.fs.FileSystemException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.net.SocketClient;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

/* loaded from: classes.dex */
public class ao {

    /* renamed from: a, reason: collision with root package name */
    private static final String f2673a = com.estrongs.android.pop.a.f + "/settings/";

    /* renamed from: b, reason: collision with root package name */
    private static String f2674b = null;
    private static final as[] c = {new as("fex_version", 0), new as("apkMtime", 0)};
    private static final as[] d = {new as("recomm_last_check_time", 1), new as("apkMtime", 0), new as("PCS_remind_upgrade_time", 0), new as("last_statistics", 0), new as("last_pcs_access", 0), new as("upgrade_last_check_time", 1), new as("last_request_push_data_time", 0), new as("last_pcs_verify", 0), new as("pcs_uinfo_timestamp", 0)};
    private static final String[] e = {null, "preference", "serverlistdb", "serverlistdb3", "serverlistdb4", "serverlistdb5", "serverlistdb6", "serverlistdb7", "serverlistdb8"};
    private static final String[] f = {"Boxnet.cfg", "Skydrv.cfg", "Gdrive.cfg", "Kanbox.cfg", "Kuaipan.cfg", "Ubuntu.cfg", "S3.cfg", "Dropbox.cfg", "SugarSync.cfg", "Pcs.cfg", "Flickr.cfg", "Instagram.cfg", "Facebook.cfg"};

    public ao() {
        new File(f2673a).mkdirs();
    }

    private int a(Context context, String str) {
        StringBuilder sb = new StringBuilder();
        if (!str.endsWith("/")) {
            str = str + "/";
        }
        String sb2 = sb.append(str).append("ESSettings.zip").toString();
        File file = new File(sb2);
        if (file.exists()) {
            com.estrongs.android.ui.b.aq aqVar = new com.estrongs.android.ui.b.aq(context);
            aqVar.a(context.getText(C0000R.string.message_confirm)).b(String.format(context.getString(C0000R.string.file_exists_overwrite_prompt_message), "ESSettings.zip")).b(C0000R.string.confirm_ok, new aq(this, sb2, file, context)).c(C0000R.string.confirm_cancel, new ap(this));
            com.estrongs.android.ui.b.ag a2 = aqVar.a();
            a2.setCanceledOnTouchOutside(false);
            a2.show();
            return 1;
        }
        try {
            HashMap hashMap = new HashMap(2);
            hashMap.put("compress_level", String.valueOf(1));
            com.estrongs.io.a.a.b bVar = new com.estrongs.io.a.a.b(null);
            bVar.c(true);
            com.estrongs.io.archive.i iVar = new com.estrongs.io.archive.i(sb2, bVar, hashMap);
            ArrayList arrayList = new ArrayList();
            arrayList.add(f2673a);
            iVar.a(arrayList);
            try {
                b();
                new File(f2673a).delete();
            } catch (Exception e2) {
            }
            com.estrongs.android.pop.q.a(context).y(sb2);
            return 0;
        } catch (FileSystemException e3) {
            e3.printStackTrace();
            return -1;
        } catch (IOException e4) {
            e4.printStackTrace();
            return -1;
        } catch (NullPointerException e5) {
            return -1;
        }
    }

    public static void a(String str) {
        if (str.endsWith("/")) {
            f2674b = str;
        } else {
            f2674b = str + "/";
        }
    }

    private boolean a(int i, String str, as[] asVarArr) {
        for (int i2 = 0; i2 < asVarArr.length; i2++) {
            if (i == asVarArr[i2].f2680b && str.equals(asVarArr[i2].f2679a)) {
                return true;
            }
        }
        return false;
    }

    private String b(Context context, String str) {
        byte[] bArr = new byte[524288];
        try {
            InputStream a2 = com.estrongs.fs.impl.local.d.a(context, str, true);
            if (a2 == null) {
                return null;
            }
            int i = 0;
            while (true) {
                int read = a2.read(bArr, i, 524288 - i);
                if (read <= 0) {
                    a2.close();
                    return new String(bArr, 0, i);
                }
                i = read + i;
            }
        } catch (Exception e2) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        for (int i = 0; i < e.length; i++) {
            try {
                new File(e[i] == null ? f2673a + "default" : f2673a + e[i]).delete();
            } catch (Exception e2) {
                return;
            }
        }
        for (int i2 = 0; i2 < f.length; i2++) {
            new File(f2673a + f[i2]).delete();
        }
    }

    private boolean b(String str) {
        com.estrongs.io.archive.h hVar = null;
        boolean z = true;
        try {
            try {
                File file = new File(f2673a);
                if (file.exists()) {
                    b();
                    file.delete();
                }
                HashMap hashMap = new HashMap();
                hashMap.put("charset_name", "UTF-8");
                hashMap.put("reload", "true");
                hVar = com.estrongs.io.archive.c.b(str, hashMap);
                ar arVar = new ar(this, null, ak.aY(f2673a));
                arVar.c(true);
                hVar.a(arVar);
            } catch (Exception e2) {
                e2.printStackTrace();
                z = false;
                if (hVar != null) {
                    hVar.g();
                }
            }
            return z;
        } finally {
            if (hVar != null) {
                hVar.g();
            }
        }
    }

    public int a(Context context, String str, String str2) {
        SharedPreferences sharedPreferences;
        String str3;
        int i = 0;
        try {
            File file = new File(str);
            if (!file.exists() && !file.mkdirs()) {
                return -1;
            }
            File file2 = new File(f2673a);
            if (file2.exists()) {
                b();
            } else {
                file2.mkdirs();
            }
            k kVar = (str2 == null || str2.length() <= 0) ? new k("!@#$dd") : new k(str2);
            for (int i2 = 0; i2 < e.length; i2++) {
                if (e[i2] == null) {
                    sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                    str3 = f2673a + "default";
                } else {
                    sharedPreferences = context.getSharedPreferences(e[i2], 0);
                    str3 = f2673a + e[i2];
                }
                JSONObject jSONObject = new JSONObject();
                Map<String, ?> all = sharedPreferences.getAll();
                if (!all.isEmpty()) {
                    jSONObject.putAll(all);
                    String jSONString = jSONObject.toJSONString();
                    if (kVar != null) {
                        jSONString = kVar.b(jSONString);
                    }
                    OutputStream f2 = com.estrongs.fs.impl.local.d.f(str3);
                    f2.write(jSONString.getBytes());
                    f2.close();
                }
            }
            while (true) {
                int i3 = i;
                if (i3 >= f.length) {
                    break;
                }
                String b2 = b(context, f2674b + f[i3]);
                if (b2 != null) {
                    try {
                        OutputStream f3 = com.estrongs.fs.impl.local.d.f(f2673a + f[i3]);
                        if (kVar != null) {
                            b2 = kVar.b(b2);
                        }
                        f3.write(b2.getBytes());
                        f3.close();
                    } catch (Exception e2) {
                    }
                }
                i = i3 + 1;
            }
            if (str == null) {
                return -1;
            }
            return a(context, str);
        } catch (Exception e3) {
            e3.printStackTrace();
            return -1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x01cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0148 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean b(Context context, String str, String str2) {
        boolean z;
        String str3;
        SharedPreferences sharedPreferences;
        String str4;
        if (str != null) {
            try {
                if (!b(str)) {
                    return false;
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }
        k kVar = (str2 == null || str2.length() <= 0) ? new k("!@#$dd") : new k(str2);
        for (int i = 0; i < e.length; i++) {
            if (e[i] == null) {
                sharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                str4 = f2673a + "default";
            } else {
                sharedPreferences = context.getSharedPreferences(e[i], 0);
                str4 = f2673a + e[i];
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            String b2 = b(context, str4);
            if (b2 != null) {
                if (kVar != null) {
                    b2 = kVar.c(b2);
                }
                Map map = (Map) new JSONParser().parse(b2);
                if (!map.isEmpty()) {
                    for (String str5 : map.keySet()) {
                        if (!a(i, str5, c)) {
                            Object obj = map.get(str5);
                            try {
                                if (obj instanceof Integer) {
                                    if (a(i, str5, d)) {
                                        edit.putLong(str5, new Long(((Integer) obj).intValue()).longValue());
                                    } else {
                                        edit.putInt(str5, ((Integer) obj).intValue());
                                    }
                                } else if (obj instanceof String) {
                                    edit.putString(str5, obj.toString());
                                } else if (obj instanceof Long) {
                                    if (a(i, str5, d)) {
                                        edit.putLong(str5, ((Long) obj).longValue());
                                    } else {
                                        edit.putInt(str5, ((Long) obj).intValue());
                                    }
                                } else if (obj instanceof Boolean) {
                                    edit.putBoolean(str5, ((Boolean) obj).booleanValue());
                                }
                            } catch (Exception e3) {
                            }
                        }
                    }
                    edit.commit();
                }
            }
        }
        for (int i2 = 0; i2 < f.length; i2++) {
            boolean z2 = true;
            String b3 = b(context, f2673a + f[i2]);
            if (b3 != null) {
                if (kVar != null) {
                    b3 = kVar.c(b3);
                }
                String b4 = b(context, f2674b + f[i2]);
                if (b4 != null) {
                    String[] split = b3.split(SocketClient.NETASCII_EOL);
                    String[] split2 = b4.split(SocketClient.NETASCII_EOL);
                    boolean[] zArr = new boolean[split.length];
                    for (int i3 = 0; i3 < split.length; i3++) {
                        zArr[i3] = true;
                        int i4 = 0;
                        while (true) {
                            if (i4 >= split2.length) {
                                break;
                            }
                            if (split2[i4].equals(split[i3])) {
                                zArr[i3] = false;
                                break;
                            }
                            i4++;
                        }
                    }
                    StringBuilder sb = new StringBuilder();
                    z2 = false;
                    for (int i5 = 0; i5 < split.length; i5++) {
                        if (zArr[i5]) {
                            sb.append(split[i5]);
                            sb.append(SocketClient.NETASCII_EOL);
                            z2 = true;
                        }
                    }
                    if (z2) {
                        sb.append(b4);
                        z = z2;
                        str3 = sb.toString();
                        if (!z) {
                            try {
                                OutputStream b5 = com.estrongs.fs.impl.local.d.b(f2674b + f[i2], true);
                                b5.write(str3.getBytes());
                                b5.close();
                            } catch (Exception e4) {
                            }
                        }
                    }
                }
                String str6 = b3;
                z = z2;
                str3 = str6;
                if (!z) {
                }
            }
        }
        try {
            b();
            new File(f2673a).delete();
        } catch (Exception e5) {
        }
        return true;
    }
}

package com.estrongs.android.pop.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.b.ew;
import com.estrongs.fs.FileSystemException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class c {

    /* renamed from: b, reason: collision with root package name */
    private static List<com.estrongs.fs.g> f1250b = null;

    /* renamed from: a, reason: collision with root package name */
    FileExplorerActivity f1251a;
    private Map<String, String> c = null;
    private Map<String, String[]> d = null;
    private Map<String, String> e = null;

    public c(FileExplorerActivity fileExplorerActivity) {
        this.f1251a = fileExplorerActivity;
    }

    private static Intent a(PackageManager packageManager, ApplicationInfo applicationInfo) {
        try {
            Intent a2 = com.estrongs.android.util.ag.a(applicationInfo.packageName, packageManager);
            if (a2 != null) {
                a2.addFlags(268435456);
            } else {
                Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(applicationInfo.packageName);
                if (launchIntentForPackage != null) {
                    a2 = launchIntentForPackage.cloneFilter();
                    a2.addFlags(268435456);
                } else {
                    a2 = null;
                }
            }
            return a2;
        } catch (Exception e) {
            return null;
        }
    }

    public static List<com.estrongs.fs.g> a() {
        return f1250b;
    }

    public static void a(Activity activity, ApplicationInfo applicationInfo) {
        try {
            Intent a2 = a(activity.getPackageManager(), applicationInfo);
            if (a2 == null) {
                a.a((Context) activity, C0000R.string.start_acitivity_error);
            } else {
                a2.addFlags(268435456);
                activity.startActivity(a2);
            }
        } catch (Exception e) {
            a.a((Context) activity, C0000R.string.start_acitivity_error);
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Context context, String str, String str2) {
        new k(this, context, str2).execute(new Void[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str) {
        return (str.startsWith("/data") || str.startsWith("/mnt/sdcard") || str.startsWith("/mnt/asec")) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(List<String[]> list, String str) {
        for (int i = 0; i < list.size(); i++) {
            if (com.estrongs.android.util.ak.h(list.get(i)[0], str)) {
                return true;
            }
        }
        return false;
    }

    public static void b() {
        f1250b = null;
    }

    public static void c(List<com.estrongs.fs.g> list) {
        f1250b = list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(FileExplorerActivity fileExplorerActivity, List<com.estrongs.fs.impl.b.c> list) {
        String C = com.estrongs.android.pop.q.a(fileExplorerActivity).C();
        com.estrongs.fs.b.b bVar = new com.estrongs.fs.b.b(fileExplorerActivity, com.estrongs.fs.d.a(fileExplorerActivity), list, C);
        f fVar = new f(this, fileExplorerActivity);
        if (this.d == null) {
            this.d = new HashMap();
        }
        String str = !C.endsWith("/") ? C + "/" : C;
        for (com.estrongs.fs.impl.b.c cVar : list) {
            this.d.put(cVar.c().packageName, new String[]{str + cVar.g(), cVar.f().a()});
        }
        bVar.setDescription(fileExplorerActivity.getString(C0000R.string.application_download));
        bVar.addTaskStatusChangeListener(fVar);
        new ew(fileExplorerActivity, fileExplorerActivity.getString(C0000R.string.progress_update), bVar).show();
        ((com.estrongs.a.a.e) bVar.getDecisionData(com.estrongs.a.a.e.class)).g = 1;
        bVar.setTaskDecisionListener(null);
        bVar.execute();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(List<com.estrongs.fs.impl.b.c> list) {
        boolean z;
        int size = list.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                z = false;
                break;
            }
            if (a(list.get(i).getPath())) {
                z = true;
                break;
            }
            i++;
        }
        if (z) {
            if (!com.estrongs.fs.impl.local.h.a((Context) this.f1251a, false)) {
                com.estrongs.android.ui.view.z.a(this.f1251a, this.f1251a.getText(C0000R.string.uninstall_need_root), 1).show();
                return false;
            }
            new com.estrongs.android.ui.b.aq(this.f1251a).a(C0000R.string.message_confirm).b(C0000R.string.uninstall_system_confirm).b(C0000R.string.confirm_ok, new o(this, list)).c(C0000R.string.confirm_cancel, new n(this)).b();
        } else if (com.estrongs.fs.impl.local.h.a((Context) this.f1251a, false) && com.estrongs.android.pop.q.a(this.f1251a).aa()) {
            new com.estrongs.android.ui.b.aq(this.f1251a).a(C0000R.string.message_confirm).b(C0000R.string.apk_uninstall_confirm).b(C0000R.string.confirm_ok, new s(this, list)).c(C0000R.string.confirm_cancel, new r(this)).b();
        } else {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i2 = 0; i2 < list.size(); i2++) {
                ApplicationInfo c = list.get(i2).c();
                if (c != null) {
                    arrayList.add(c.packageName);
                    arrayList2.add(list.get(i2).getName());
                }
            }
            AppRunner.a(this.f1251a, arrayList, arrayList2);
        }
        return true;
    }

    public void a(Context context) {
        new Thread(new m(this, context)).start();
    }

    public void a(Context context, Intent intent) {
        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
        if (schemeSpecificPart == null || this.c == null || this.c.get(schemeSpecificPart) == null) {
            return;
        }
        String str = this.c.get(schemeSpecificPart);
        this.c.remove(schemeSpecificPart);
        a(context, schemeSpecificPart, str);
    }

    public void a(com.estrongs.fs.impl.b.f fVar) {
        PackageInfo packageInfo;
        String[] strArr;
        DialogInterface.OnClickListener jVar;
        try {
            String a2 = fVar.a();
            if (!com.estrongs.fs.impl.local.h.a((Context) this.f1251a, false) || a2 == null || !com.estrongs.fs.d.a(this.f1251a).b(a2)) {
                AppRunner.r(this.f1251a, fVar.getAbsolutePath());
                return;
            }
            String str = this.f1251a.getPackageManager().getPackageArchiveInfo(fVar.getAbsolutePath(), 1).applicationInfo.packageName;
            com.estrongs.android.ui.b.ag agVar = new com.estrongs.android.ui.b.ag(this.f1251a);
            agVar.setTitle(C0000R.string.action_select);
            agVar.setSelectable(false);
            try {
                packageInfo = this.f1251a.getPackageManager().getPackageInfo(str, 0);
            } catch (Exception e) {
                e.printStackTrace();
                packageInfo = null;
            }
            if (packageInfo == null) {
                strArr = new String[]{this.f1251a.getString(C0000R.string.button_install), this.f1251a.getString(C0000R.string.app_install_and_restore)};
                jVar = new i(this, fVar, str, a2);
            } else {
                strArr = new String[]{this.f1251a.getString(C0000R.string.button_install), this.f1251a.getString(C0000R.string.app_restore_cache_data), this.f1251a.getString(C0000R.string.app_install_and_restore)};
                jVar = new j(this, fVar, str, a2);
            }
            agVar.setItems(strArr, -1, jVar);
            agVar.show();
        } catch (FileSystemException e2) {
            e2.printStackTrace();
        }
    }

    public void a(String str, String str2) {
        if (this.e == null) {
            this.e = new HashMap();
        }
        this.e.put(str, str2);
    }

    @SuppressLint({"InlinedApi"})
    public boolean a(ApplicationInfo applicationInfo) {
        Intent intent = new Intent();
        String str = applicationInfo.packageName;
        if (com.estrongs.android.util.aw.c()) {
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", str, null));
        } else {
            intent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
            if (com.estrongs.android.util.aw.b()) {
                intent.putExtra("pkg", str);
            } else {
                intent.putExtra("com.android.settings.ApplicationPkgName", str);
            }
        }
        try {
            this.f1251a.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            return false;
        }
    }

    public boolean a(FileExplorerActivity fileExplorerActivity, List<com.estrongs.fs.impl.b.c> list) {
        com.estrongs.android.pop.q a2 = com.estrongs.android.pop.q.a(this.f1251a);
        com.estrongs.fs.b.a aVar = new com.estrongs.fs.b.a(com.estrongs.fs.d.a(fileExplorerActivity), fileExplorerActivity.getPackageManager(), list, a2.A(), com.estrongs.fs.impl.local.h.a((Context) fileExplorerActivity, false) && a2.l());
        u uVar = new u(this, fileExplorerActivity);
        aVar.setDescription(fileExplorerActivity.getString(C0000R.string.backup_application));
        aVar.addTaskStatusChangeListener(uVar);
        new ew(fileExplorerActivity, fileExplorerActivity.getString(C0000R.string.progress_backing_up), aVar).b(false).show();
        aVar.execute();
        return true;
    }

    public boolean a(List<com.estrongs.fs.impl.b.c> list) {
        com.estrongs.android.pop.q a2 = com.estrongs.android.pop.q.a(this.f1251a);
        if (!a2.k()) {
            return d(list);
        }
        com.estrongs.fs.b.a aVar = new com.estrongs.fs.b.a(com.estrongs.fs.d.a(this.f1251a), this.f1251a.getPackageManager(), list, a2.A(), com.estrongs.fs.impl.local.h.a((Context) this.f1251a, false) && a2.l());
        d dVar = new d(this, list);
        aVar.setDescription(this.f1251a.getString(C0000R.string.backup_application));
        aVar.addTaskStatusChangeListener(dVar);
        new ew(this.f1251a, this.f1251a.getString(C0000R.string.progress_backing_up), aVar).b(false).show();
        aVar.execute();
        return true;
    }

    public List<com.estrongs.fs.g> b(Context context) {
        ArrayList arrayList = new ArrayList();
        try {
            HashMap hashMap = new HashMap();
            com.estrongs.android.pop.q.a(context);
            com.estrongs.android.pop.q.a(context, hashMap);
            if (!hashMap.isEmpty()) {
                PackageManager packageManager = context.getPackageManager();
                for (ApplicationInfo applicationInfo : packageManager.getInstalledApplications(8192)) {
                    if (hashMap.containsKey(applicationInfo.packageName) && ((applicationInfo.flags & 128) != 0 || (applicationInfo.flags & 1) == 0)) {
                        com.estrongs.fs.impl.b.c cVar = new com.estrongs.fs.impl.b.c(applicationInfo.sourceDir, com.estrongs.fs.l.f3184b, y.a(packageManager, applicationInfo), applicationInfo);
                        cVar.a(com.estrongs.fs.impl.b.d.b(packageManager, applicationInfo));
                        arrayList.add(cVar);
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return arrayList;
    }

    public void b(Context context, Intent intent) {
        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
        if (schemeSpecificPart == null || this.d == null || this.d.get(schemeSpecificPart) == null) {
            return;
        }
        try {
            String[] remove = this.d.remove(schemeSpecificPart);
            if (remove != null) {
                new com.estrongs.fs.b.o(com.estrongs.fs.d.a(context), (com.estrongs.fs.g) com.estrongs.fs.impl.local.d.b(remove[0]), false, false).execute();
                com.estrongs.android.ui.view.z.a(context, context.getString(C0000R.string.apk_delete_suc, remove[1]), 1).show();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void b(FileExplorerActivity fileExplorerActivity, List<com.estrongs.fs.g> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        f1250b = list;
        fileExplorerActivity.c("app://update");
    }

    public boolean b(List<com.estrongs.fs.impl.b.c> list) {
        if (list == null || list.size() <= 0) {
            return false;
        }
        new t(this, list.size(), list).execute(new Void[0]);
        return true;
    }

    public void c(Context context, Intent intent) {
        String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
        if (schemeSpecificPart == null || this.e == null || this.e.get(schemeSpecificPart) == null) {
            return;
        }
        try {
            AppRunner.r(this.f1251a, this.e.remove(schemeSpecificPart));
        } catch (Exception e) {
        }
    }

    public void c(FileExplorerActivity fileExplorerActivity, List<com.estrongs.fs.impl.b.c> list) {
        int i;
        if (com.estrongs.a.a.existsTask(com.estrongs.fs.b.b.class)) {
            com.estrongs.android.ui.view.z.a(fileExplorerActivity, fileExplorerActivity.getString(C0000R.string.text_app_updatetask_exists), 1).show();
            return;
        }
        ArrayList arrayList = new ArrayList();
        if (list.size() == 1) {
            arrayList.addAll(list);
        } else {
            int i2 = 0;
            for (com.estrongs.fs.impl.b.c cVar : list) {
                if (cVar.f().g()) {
                    i = i2 + 1;
                } else {
                    arrayList.add(cVar);
                    i = i2;
                }
                i2 = i;
            }
            if (i2 >= 1) {
                com.estrongs.android.ui.view.z.a(this.f1251a, this.f1251a.getString(C0000R.string.inconsistent_signature_msg, new Object[]{String.valueOf(i2)}), 1).show();
            }
            if (arrayList.size() <= 0) {
                return;
            }
        }
        if (arrayList.size() != 1 || !arrayList.get(0).f().g()) {
            d(fileExplorerActivity, arrayList);
            return;
        }
        com.estrongs.android.ui.b.aq aqVar = new com.estrongs.android.ui.b.aq(fileExplorerActivity);
        aqVar.a(C0000R.string.message_hint);
        aqVar.b(fileExplorerActivity.getString(C0000R.string.inconsistent_signature_msg_1));
        aqVar.b(fileExplorerActivity.getString(C0000R.string.recommend_button_continue), new w(this, fileExplorerActivity, arrayList));
        aqVar.c(fileExplorerActivity.getString(C0000R.string.confirm_cancel), new x(this));
        aqVar.b();
    }
}

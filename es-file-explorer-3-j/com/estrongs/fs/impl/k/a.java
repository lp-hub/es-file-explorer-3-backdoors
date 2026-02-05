package com.estrongs.fs.impl.k;

import com.estrongs.a.a.k;
import com.estrongs.a.b.l;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.utils.aj;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.ew;
import com.estrongs.android.ui.view.z;
import com.estrongs.android.util.ak;
import com.estrongs.android.view.ar;
import com.estrongs.fs.b.ac;
import com.estrongs.fs.d;
import com.estrongs.fs.g;
import com.estrongs.fs.h;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static Set<Long> f3090a = new HashSet();

    public static List<g> a(String str, h hVar, l<String> lVar) {
        ArrayList arrayList = new ArrayList();
        if (b()) {
            return arrayList;
        }
        HashSet<String> hashSet = new HashSet();
        hashSet.add(ak.d());
        List<String> a2 = ak.a();
        if (a2 != null) {
            hashSet.addAll(a2);
        }
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        for (String str2 : hashSet) {
            if (currentTask != null && currentTask.taskStopped()) {
                return null;
            }
            File file = new File(str2 + "/.estrongs/recycle/");
            if (file.exists() && file.isDirectory()) {
                a(file, hVar, currentTask, lVar, arrayList, true);
            }
        }
        return arrayList;
    }

    public static void a() {
        FileExplorerActivity E = FileExplorerActivity.E();
        if (E != null) {
            E.W();
        }
    }

    public static void a(long j) {
        boolean z;
        FileExplorerActivity E;
        synchronized (f3090a) {
            z = f3090a.size() == 0;
            f3090a.add(Long.valueOf(j));
        }
        if (!z || (E = FileExplorerActivity.E()) == null) {
            return;
        }
        E.W();
    }

    public static void a(ESActivity eSActivity, ar arVar) {
        boolean z;
        if (arVar == null || arVar.d() == 0) {
            z.a(FileExplorerActivity.E(), C0000R.string.recycle_empty, 0).show();
            return;
        }
        LinkedList linkedList = new LinkedList();
        HashSet hashSet = new HashSet();
        hashSet.add(ak.d());
        List<String> a2 = ak.a();
        if (a2 != null) {
            hashSet.addAll(a2);
        }
        Iterator it = hashSet.iterator();
        loop0: while (it.hasNext()) {
            File file = new File(((String) it.next()) + "/.estrongs/recycle/");
            if (file.exists() && file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles == null) {
                    return;
                }
                for (File file2 : listFiles) {
                    if (file2 != null && file2.isDirectory()) {
                        try {
                            long longValue = Long.valueOf(file2.getName()).longValue();
                            synchronized (f3090a) {
                                z = !f3090a.contains(Long.valueOf(longValue));
                            }
                        } catch (Exception e) {
                            z = false;
                        }
                        if (z) {
                            linkedList.add(new com.estrongs.fs.impl.local.b(file2));
                        }
                    }
                }
            }
        }
        aj.a(eSActivity, (List<g>) linkedList, arVar, (k) new b(), C0000R.string.action_clear, eSActivity.getString(C0000R.string.confirm_clear_cycle), true);
    }

    public static void a(FileExplorerActivity fileExplorerActivity, List<g> list, k kVar) {
        ac acVar = new ac(fileExplorerActivity, d.a(), list);
        acVar.addTaskStatusChangeListener(kVar);
        acVar.setDescription(fileExplorerActivity.getString(C0000R.string.restore_description));
        acVar.setCanHide(false);
        ew ewVar = new ew(fileExplorerActivity, fileExplorerActivity.getString(C0000R.string.progress_restoring), acVar);
        ewVar.a(false);
        ewVar.e();
        fileExplorerActivity.getWindow().getDecorView().post(new c(acVar));
    }

    private static void a(File file, h hVar, com.estrongs.a.a aVar, l<String> lVar, List<g> list, boolean z) {
        boolean z2;
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return;
        }
        if (z) {
            for (int i = 0; i < listFiles.length; i++) {
                File file2 = listFiles[i];
                if (file2 != null && file2.isDirectory()) {
                    try {
                        long longValue = Long.valueOf(file2.getName()).longValue();
                        synchronized (f3090a) {
                            z2 = !f3090a.contains(Long.valueOf(longValue));
                        }
                    } catch (Exception e) {
                        z2 = false;
                    }
                    if (!z2) {
                        listFiles[i] = null;
                    }
                }
            }
        }
        for (File file3 : listFiles) {
            if (file3 != null) {
                if (aVar != null && aVar.taskStopped()) {
                    return;
                }
                if (!file3.isDirectory()) {
                    continue;
                } else if (file3.getName().equals("es_recycle_content")) {
                    File[] listFiles2 = file3.listFiles();
                    if (listFiles2 != null) {
                        for (File file4 : listFiles2) {
                            if (file4 != null) {
                                if (aVar != null && aVar.taskStopped()) {
                                    return;
                                }
                                com.estrongs.fs.impl.local.b bVar = new com.estrongs.fs.impl.local.b(file4);
                                if (hVar.a(bVar) && !"PCS_DRIVE_Js1a7M5e_9yAcTvFX".equals(file4.getName())) {
                                    list.add(bVar);
                                    if (aVar != null) {
                                        aVar.sendMessage(11, bVar);
                                    }
                                }
                                if (lVar != null) {
                                    lVar.a(bVar.getAbsolutePath(), new long[0]);
                                    if (lVar.a()) {
                                        return;
                                    }
                                } else {
                                    continue;
                                }
                            }
                        }
                    } else {
                        continue;
                    }
                } else {
                    a(file3, hVar, aVar, lVar, list, false);
                }
            }
        }
    }

    public static void b(long j) {
        FileExplorerActivity E;
        boolean z = false;
        synchronized (f3090a) {
            if (f3090a.contains(Long.valueOf(j))) {
                f3090a.remove(Long.valueOf(j));
                if (f3090a.size() == 0) {
                    z = true;
                }
            }
        }
        if (!z || (E = FileExplorerActivity.E()) == null) {
            return;
        }
        E.W();
    }

    public static boolean b() {
        boolean z;
        synchronized (f3090a) {
            z = !f3090a.isEmpty();
        }
        return z;
    }
}

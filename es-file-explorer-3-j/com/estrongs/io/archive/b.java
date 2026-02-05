package com.estrongs.io.archive;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
final class b extends Thread {
    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        ArrayList arrayList = new ArrayList(5);
        while (true) {
            try {
                Thread.sleep(300000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            for (String str : a.f3188b.keySet()) {
                if (System.currentTimeMillis() - a.f3188b.get(str).longValue() >= 900000) {
                    arrayList.add(str);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                h hVar = a.f3187a.get(str2);
                if (hVar != null) {
                    hVar.g();
                    a.f3187a.remove(str2);
                    a.f3188b.remove(str2);
                }
            }
        }
    }
}

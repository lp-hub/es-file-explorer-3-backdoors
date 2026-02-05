package com.estrongs.android.ui.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.AsyncTask;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l extends AsyncTask<Void, Void, List<m>> {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ i f1591a;

    private l(i iVar) {
        this.f1591a = iVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ l(i iVar, j jVar) {
        this(iVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public List<m> doInBackground(Void... voidArr) {
        PackageManager packageManager;
        Context context;
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        packageManager = this.f1591a.g;
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 1);
        LinkedList linkedList = new LinkedList();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= queryIntentActivities.size()) {
                return linkedList;
            }
            ActivityInfo activityInfo = queryIntentActivities.get(i2).activityInfo;
            String str = activityInfo.packageName;
            context = this.f1591a.f1586a;
            if (!context.getPackageName().equals(str)) {
                String str2 = activityInfo.name;
                m mVar = new m(this.f1591a);
                mVar.c = "start_app" + str + "#" + str2;
                linkedList.add(mVar);
            }
            i = i2 + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onPostExecute(List<m> list) {
        super.onPostExecute(list);
        this.f1591a.getGroup(3).f1595b.addAll(list);
        this.f1591a.notifyDataSetChanged();
    }
}

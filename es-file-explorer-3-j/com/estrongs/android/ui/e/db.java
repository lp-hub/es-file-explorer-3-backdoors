package com.estrongs.android.ui.e;

import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.fs.FileSystemException;
import java.util.LinkedList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class db extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LinkedList f2059a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ LinkedList f2060b;
    final /* synthetic */ bz c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public db(bz bzVar, String str, LinkedList linkedList, LinkedList linkedList2) {
        super(str);
        this.c = bzVar;
        this.f2059a = linkedList;
        this.f2060b = linkedList2;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        try {
            fileExplorerActivity2 = this.c.l;
            com.estrongs.fs.d.a(fileExplorerActivity2).a(this.f2059a);
        } catch (FileSystemException e) {
            e.printStackTrace();
        }
        try {
            fileExplorerActivity = this.c.l;
            com.estrongs.fs.d.a(fileExplorerActivity).a(this.f2060b);
        } catch (FileSystemException e2) {
            e2.printStackTrace();
        }
        this.f2059a.clear();
        this.f2060b.clear();
    }
}

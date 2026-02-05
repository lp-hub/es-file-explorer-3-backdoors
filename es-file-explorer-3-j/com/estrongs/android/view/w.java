package com.estrongs.android.view;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESImageView;
import java.util.LinkedList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class w implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ n f2857a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(n nVar) {
        this.f2857a = nVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        LinkedList linkedList;
        ViewGroup viewGroup;
        LinkedList linkedList2;
        LinkedList linkedList3;
        ViewGroup viewGroup2;
        LinkedList linkedList4;
        Activity activity;
        ViewGroup viewGroup3;
        linkedList = n.h;
        if (linkedList.size() == 0) {
            this.f2857a.e();
            return;
        }
        viewGroup = this.f2857a.f;
        viewGroup.removeAllViews();
        int i = 0;
        while (true) {
            int i2 = i;
            linkedList2 = n.h;
            if (i2 >= linkedList2.size()) {
                return;
            }
            if (i2 > 0) {
                linkedList4 = n.h;
                if (i2 < linkedList4.size()) {
                    activity = this.f2857a.e;
                    ESImageView eSImageView = new ESImageView(activity);
                    eSImageView.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
                    eSImageView.setBackgroundResource(C0000R.drawable.clipboard_content_sp);
                    viewGroup3 = this.f2857a.f;
                    viewGroup3.addView(eSImageView);
                }
            }
            linkedList3 = n.h;
            View an = ((x) linkedList3.get(i2)).an();
            if (an.getParent() != null) {
                ((ViewGroup) an.getParent()).removeView(an);
            }
            viewGroup2 = this.f2857a.f;
            viewGroup2.addView(an);
            i = i2 + 1;
        }
    }
}

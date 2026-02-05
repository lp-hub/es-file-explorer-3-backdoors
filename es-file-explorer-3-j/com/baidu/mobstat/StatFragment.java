package com.baidu.mobstat;

import android.support.v4.app.Fragment;

/* loaded from: classes.dex */
public class StatFragment extends Fragment {
    @Override // android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        com.baidu.mobstat.a.c.a("stat", "StatFragment.OnResume()");
        StatService.onPause((Fragment) this);
    }

    @Override // android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        com.baidu.mobstat.a.c.a("stat", "StatFragment.OnResume()");
        StatService.onResume((Fragment) this);
    }
}

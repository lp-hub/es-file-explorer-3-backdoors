package com.baidu.sapi2.loginshare;

/* loaded from: classes.dex */
public class EnableHelper {
    private volatile boolean mEnable = true;
    private long mCheckTime = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getCheckTime() {
        return this.mCheckTime;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEnable() {
        return this.mEnable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCheckTime(long j) {
        this.mCheckTime = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEnable(boolean z) {
        this.mEnable = z;
    }
}

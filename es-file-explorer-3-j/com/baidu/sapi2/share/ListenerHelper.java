package com.baidu.sapi2.share;

import java.util.ArrayList;

/* loaded from: classes.dex */
public class ListenerHelper {
    private ArrayList<IShareListener> mListeners = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public void destroy() {
        synchronized (this.mListeners) {
            this.mListeners.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onShareEvent(ShareModel shareModel) {
        if (shareModel == null || this.mListeners == null) {
            return;
        }
        synchronized (this.mListeners) {
            int size = this.mListeners.size();
            for (int i = 0; i < size; i++) {
                this.mListeners.get(i).onShareEvent(shareModel);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean registListener(IShareListener iShareListener) {
        boolean z = false;
        if (iShareListener != null) {
            synchronized (this.mListeners) {
                if (!this.mListeners.contains(iShareListener)) {
                    z = this.mListeners.add(iShareListener);
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean unRegistListener(IShareListener iShareListener) {
        boolean remove;
        if (iShareListener == null) {
            return false;
        }
        synchronized (this.mListeners) {
            remove = this.mListeners.remove(iShareListener);
        }
        return remove;
    }
}

package com.baidu.sapi2.loginshare;

/* loaded from: classes.dex */
public class ListenerHelper {
    private ILoginShareListener mListener = null;

    synchronized void destroy() {
        this.mListener = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void onLoginShareEvent(Token token) {
        if (this.mListener != null) {
            this.mListener.onLoginShareEvent(token);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void setLoginShareListener(ILoginShareListener iLoginShareListener) {
        this.mListener = iLoginShareListener;
    }
}

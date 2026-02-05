package com.baidu.sapi2.share;

import android.content.Context;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ShareAssistant {
    private static ShareAssistant mInstance = null;
    private ListenerHelper mListenerHelper = new ListenerHelper();
    private ShareSender mSender;

    private ShareAssistant(Context context) {
        this.mSender = null;
        if (context == null) {
            throw new IllegalArgumentException("context cannot be null");
        }
        this.mSender = new ShareSender(context);
    }

    public static synchronized ShareAssistant getInstance(Context context) {
        ShareAssistant shareAssistant;
        synchronized (ShareAssistant.class) {
            if (mInstance == null) {
                mInstance = new ShareAssistant(context);
            }
            shareAssistant = mInstance;
        }
        return shareAssistant;
    }

    public void destroy() {
        if (this.mListenerHelper != null) {
            this.mListenerHelper.destroy();
        }
        if (this.mSender != null) {
            this.mSender.destroy();
        }
        try {
            NativeCrypto.destroy();
        } catch (Throwable th) {
        }
        mInstance = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onShareEvent(ShareModel shareModel) {
        this.mListenerHelper.onShareEvent(shareModel);
    }

    public boolean registListener(IShareListener iShareListener) {
        return this.mListenerHelper.registListener(iShareListener);
    }

    public boolean share(ShareModel shareModel) {
        return this.mSender.share(shareModel);
    }

    public boolean share(ShareModel shareModel, ArrayList<String> arrayList) {
        return this.mSender.share(shareModel, arrayList);
    }

    public boolean unRegistListener(IShareListener iShareListener) {
        return this.mListenerHelper.unRegistListener(iShareListener);
    }
}

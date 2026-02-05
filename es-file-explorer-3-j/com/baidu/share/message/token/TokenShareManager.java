package com.baidu.share.message.token;

import android.content.Context;
import com.baidu.share.message.token.a.a;

/* loaded from: classes.dex */
public class TokenShareManager {
    private static final String TAG = TokenShareManager.class.getSimpleName();
    private static TokenShareManager mInstance = null;
    private a mTokenShareManagerImpl;

    private TokenShareManager() {
        this.mTokenShareManagerImpl = null;
        this.mTokenShareManagerImpl = a.a();
    }

    public static final TokenShareManager getInstance() {
        if (mInstance == null) {
            mInstance = new TokenShareManager();
        }
        return mInstance;
    }

    public void cleanupTokens() {
        this.mTokenShareManagerImpl.c();
    }

    public void destroy() {
        if (this.mTokenShareManagerImpl != null) {
            this.mTokenShareManagerImpl.b();
        }
        mInstance = null;
    }

    public synchronized ShareToken getToken(long j) {
        return this.mTokenShareManagerImpl.a(j);
    }

    public synchronized ShareToken getVerifiedShareToken() {
        return this.mTokenShareManagerImpl.e();
    }

    public void init(Context context) {
        this.mTokenShareManagerImpl.a(context);
    }

    public void setShareTokenListener(ShareTokenListener shareTokenListener) {
        this.mTokenShareManagerImpl.a(shareTokenListener);
    }

    public void setToken(ShareToken shareToken) {
        this.mTokenShareManagerImpl.a(shareToken);
    }

    public void syncToken() {
        this.mTokenShareManagerImpl.d();
    }
}

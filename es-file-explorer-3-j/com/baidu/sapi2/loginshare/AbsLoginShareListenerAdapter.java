package com.baidu.sapi2.loginshare;

import com.baidu.sapi2.SapiHelper;

/* loaded from: classes.dex */
public abstract class AbsLoginShareListenerAdapter implements ILoginShareListener {
    public abstract void onInvalid(Token token);

    @Override // com.baidu.sapi2.loginshare.ILoginShareListener
    public void onLoginShareEvent(Token token) {
        if (token.mEvent == LoginShareEvent.INVALID) {
            SapiHelper.getInstance().invalid(false);
            onInvalid(token);
        } else if (token.mEvent == LoginShareEvent.VALID) {
            SapiHelper.getInstance().setToken(token);
            onValid(token);
        }
    }

    public abstract void onValid(Token token);
}

package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.spfs.OAuthConstants;
import com.estrongs.android.pop.spfs.OAuthUtil;
import com.estrongs.android.pop.spfs.SPFileSystem;
import java.net.ConnectException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.UnknownHostException;
import java.util.Map;
import oauth.signpost.OAuth;

/* loaded from: classes.dex */
class q extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ CreateOAuthServiceProvider f2645a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(CreateOAuthServiceProvider createOAuthServiceProvider) {
        this.f2645a = createOAuthServiceProvider;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String str;
        String str2;
        String str3;
        Handler handler;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        String str4;
        Handler handler5;
        Handler handler6;
        boolean c;
        String str5;
        Handler handler7;
        Handler handler8;
        Handler handler9;
        Handler handler10;
        CreateOAuthServiceProvider createOAuthServiceProvider = this.f2645a;
        str = this.f2645a.g;
        createOAuthServiceProvider.p = SPFileSystem.getOAuthVersion(str);
        str2 = this.f2645a.p;
        if (!OAuthConstants.VERSION_10A.equals(str2)) {
            str3 = this.f2645a.g;
            String oAuthLoginUrl = SPFileSystem.getOAuthLoginUrl(str3, null);
            if (oAuthLoginUrl == null) {
                handler3 = this.f2645a.r;
                Message obtainMessage = handler3.obtainMessage(CreateOAuthServiceProvider.f2571a);
                obtainMessage.obj = null;
                handler4 = this.f2645a.r;
                handler4.sendMessage(obtainMessage);
                return;
            }
            handler = this.f2645a.r;
            Message obtainMessage2 = handler.obtainMessage(CreateOAuthServiceProvider.f2572b);
            obtainMessage2.obj = oAuthLoginUrl;
            handler2 = this.f2645a.r;
            handler2.sendMessage(obtainMessage2);
            return;
        }
        str4 = this.f2645a.g;
        URL requestTokenUrl = SPFileSystem.getRequestTokenUrl(str4);
        if (requestTokenUrl == null) {
            handler9 = this.f2645a.r;
            Message obtainMessage3 = handler9.obtainMessage(CreateOAuthServiceProvider.f2571a);
            obtainMessage3.obj = null;
            handler10 = this.f2645a.r;
            handler10.sendMessage(obtainMessage3);
            return;
        }
        try {
            Map<String, String> dataAsMap = OAuthUtil.getDataAsMap(URLDecoder.decode(OAuthUtil.getLine(requestTokenUrl, null), "UTF-8"));
            if (dataAsMap.isEmpty()) {
                throw new Exception("Empty Response");
            }
            if (!dataAsMap.containsKey(OAuth.OAUTH_CALLBACK_CONFIRMED) || !Boolean.valueOf(dataAsMap.get(OAuth.OAUTH_CALLBACK_CONFIRMED)).booleanValue()) {
                throw new Exception("Invalid response: " + dataAsMap);
            }
            String str6 = dataAsMap.get("oauth_token");
            this.f2645a.o = dataAsMap.get(OAuth.OAUTH_TOKEN_SECRET);
            str5 = this.f2645a.g;
            String oAuthLoginUrl2 = SPFileSystem.getOAuthLoginUrl(str5, str6);
            handler7 = this.f2645a.r;
            Message obtainMessage4 = handler7.obtainMessage(CreateOAuthServiceProvider.f2572b);
            obtainMessage4.obj = oAuthLoginUrl2;
            handler8 = this.f2645a.r;
            handler8.sendMessage(obtainMessage4);
        } catch (Exception e) {
            e.printStackTrace();
            handler5 = this.f2645a.r;
            Message obtainMessage5 = handler5.obtainMessage(CreateOAuthServiceProvider.d);
            if ((e instanceof UnknownHostException) || (e instanceof ConnectException) || e.getMessage().contains("timed out")) {
                c = this.f2645a.c();
                if (!c) {
                    obtainMessage5.obj = this.f2645a.getString(C0000R.string.network_not_exist);
                    handler6 = this.f2645a.r;
                    handler6.sendMessage(obtainMessage5);
                }
            }
            obtainMessage5.obj = null;
            handler6 = this.f2645a.r;
            handler6.sendMessage(obtainMessage5);
        }
    }
}

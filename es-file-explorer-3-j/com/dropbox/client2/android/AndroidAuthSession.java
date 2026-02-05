package com.dropbox.client2.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.dropbox.client2.session.AbstractSession;
import com.dropbox.client2.session.AccessTokenPair;
import com.dropbox.client2.session.AppKeyPair;
import com.dropbox.client2.session.Session;
import java.util.List;

/* loaded from: classes.dex */
public class AndroidAuthSession extends AbstractSession {
    public AndroidAuthSession(AppKeyPair appKeyPair, Session.AccessType accessType) {
        super(appKeyPair, accessType);
    }

    public AndroidAuthSession(AppKeyPair appKeyPair, Session.AccessType accessType, AccessTokenPair accessTokenPair) {
        super(appKeyPair, accessType, accessTokenPair);
    }

    public boolean authenticationSuccessful() {
        Intent intent = AuthActivity.lastResult;
        if (intent == null) {
            return false;
        }
        String stringExtra = intent.getStringExtra(AuthActivity.EXTRA_ACCESS_TOKEN);
        String stringExtra2 = intent.getStringExtra(AuthActivity.EXTRA_ACCESS_SECRET);
        String stringExtra3 = intent.getStringExtra(AuthActivity.EXTRA_UID);
        return (stringExtra == null || stringExtra.equals("") || stringExtra2 == null || stringExtra2.equals("") || stringExtra3 == null || stringExtra3.equals("")) ? false : true;
    }

    public String finishAuthentication() {
        Intent intent = AuthActivity.lastResult;
        if (intent == null) {
            throw new IllegalStateException();
        }
        String stringExtra = intent.getStringExtra(AuthActivity.EXTRA_ACCESS_TOKEN);
        String stringExtra2 = intent.getStringExtra(AuthActivity.EXTRA_ACCESS_SECRET);
        String stringExtra3 = intent.getStringExtra(AuthActivity.EXTRA_UID);
        if (stringExtra == null || stringExtra.equals("") || stringExtra2 == null || stringExtra2.equals("") || stringExtra3 == null || stringExtra3.equals("")) {
            throw new IllegalStateException();
        }
        setAccessTokenPair(new AccessTokenPair(stringExtra, stringExtra2));
        return stringExtra3;
    }

    public void startAuthentication(Context context) {
        AppKeyPair appKeyPair = getAppKeyPair();
        Intent intent = new Intent("android.intent.action.VIEW");
        String str = "db-" + appKeyPair.key;
        intent.setData(Uri.parse(str + "://1/test"));
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, 0);
        if (queryIntentActivities.size() == 0) {
            throw new IllegalStateException("URI scheme in your app's manifest is not set up correctly. You should have a com.dropbox.client2.android.AuthActivity with the scheme: " + str);
        }
        if (queryIntentActivities.size() > 1) {
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setTitle("Security alert");
            builder.setMessage("Another app on your phone may be trying to pose as the app you are currently using. The malicious app cannot access your account, but linking to Dropbox has been disabled as a precaution. Please contact support@dropbox.com.");
            builder.setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.dropbox.client2.android.AndroidAuthSession.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    dialogInterface.dismiss();
                }
            });
            builder.show();
            return;
        }
        if (!context.getPackageName().equals(queryIntentActivities.get(0).activityInfo.packageName)) {
            throw new IllegalStateException("There must be an AuthActivity within your app's package registered for your URI scheme (" + str + "). However, it appears that an activity in a different package is registered for that scheme instead. If you have multiple apps that all want to use the same accesstoken pair, designate one of them to do authentication and have the other apps launch it and then retrieve the token pair from it.");
        }
        Intent intent2 = new Intent(context, (Class<?>) AuthActivity.class);
        intent2.putExtra("EXTRA_INTERNAL_CONSUMER_KEY", appKeyPair.key);
        intent2.putExtra("EXTRA_INTERNAL_CONSUMER_SECRET", appKeyPair.secret);
        if (!(context instanceof Activity)) {
            intent2.addFlags(268435456);
        }
        context.startActivity(intent2);
    }

    @Override // com.dropbox.client2.session.AbstractSession, com.dropbox.client2.session.Session
    public void unlink() {
        super.unlink();
        AuthActivity.lastResult = null;
    }
}

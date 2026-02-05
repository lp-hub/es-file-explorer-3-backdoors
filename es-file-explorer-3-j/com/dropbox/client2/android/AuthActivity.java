package com.dropbox.client2.android;

import android.R;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Bundle;
import com.baidu.sapi2.BDAccountManager;
import com.dropbox.client2.RESTUtility;
import de.aflx.sardine.util.SardineUtil;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import oauth.signpost.OAuth;

/* loaded from: classes.dex */
public class AuthActivity extends Activity {
    public static final String ACTION_AUTHENTICATE_V1 = "com.dropbox.android.AUTHENTICATE_V1";
    public static final int AUTH_VERSION = 1;
    public static final String EXTRA_ACCESS_SECRET = "ACCESS_SECRET";
    public static final String EXTRA_ACCESS_TOKEN = "ACCESS_TOKEN";
    public static final String EXTRA_CALLING_PACKAGE = "CALLING_PACKAGE";
    public static final String EXTRA_CONSUMER_KEY = "CONSUMER_KEY";
    public static final String EXTRA_CONSUMER_SIG = "CONSUMER_SIG";
    static final String EXTRA_INTERNAL_CONSUMER_KEY = "EXTRA_INTERNAL_CONSUMER_KEY";
    static final String EXTRA_INTERNAL_CONSUMER_SECRET = "EXTRA_INTERNAL_CONSUMER_SECRET";
    public static final String EXTRA_UID = "UID";
    static Intent lastResult = null;
    private static final String[] DROPBOX_APP_SIGNATURES = {"308202223082018b02044bd207bd300d06092a864886f70d01010405003058310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f3110300e060355040a130744726f70626f783112301006035504031309546f6d204d65796572301e170d3130303432333230343930315a170d3430303431353230343930315a3058310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f3110300e060355040a130744726f70626f783112301006035504031309546f6d204d6579657230819f300d06092a864886f70d010101050003818d0030818902818100ac1595d0ab278a9577f0ca5a14144f96eccde75f5616f36172c562fab0e98c48ad7d64f1091c6cc11ce084a4313d522f899378d312e112a748827545146a779defa7c31d8c00c2ed73135802f6952f59798579859e0214d4e9c0554b53b26032a4d2dfc2f62540d776df2ea70e2a6152945fb53fef5bac5344251595b729d4810203010001300d06092a864886f70d01010405000381810055c425d94d036153203dc0bbeb3516f94563b102fff39c3d4ed91278db24fc4424a244c2e59f03bbfea59404512b8bf74662f2a32e37eafa2ac904c31f99cfc21c9ff375c977c432d3b6ec22776f28767d0f292144884538c3d5669b568e4254e4ed75d9054f75229ac9d4ccd0b7c3c74a34f07b7657083b2aa76225c0c56ffc", "308201e53082014ea00302010202044e17e115300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3131303730393035303331375a170d3431303730313035303331375a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d003081890281810096759fe5abea6a0757039b92adc68d672efa84732c3f959408e12efa264545c61f23141026a6d01eceeeaa13ec7087087e5894a3363da8bf5c69ed93657a6890738a80998e4ca22dc94848f30e2d0e1890000ae2cddf543b20c0c3828deca6c7944b5ecd21a9d18c988b2b3e54517dafbc34b48e801bb1321e0fa49e4d575d7f0203010001300d06092a864886f70d0101050500038181002b6d4b65bcfa6ec7bac97ae6d878064d47b3f9f8da654995b8ef4c385bc4fbfbb7a987f60783ef0348760c0708acd4b7e63f0235c35a4fbcd5ec41b3b4cb295feaa7d5c27fa562a02562b7e1f4776b85147be3e295714986c4a9a07183f48ea09ae4d3ea31b88d0016c65b93526b9c45f2967c3d28dee1aff5a5b29b9c2c8639"};
    private String consumerKey = null;
    private String consumerSecret = null;
    private boolean hasDelegated = false;
    private boolean gotNewIntent = false;

    private String getConsumerSig() {
        MessageDigest messageDigest = null;
        try {
            messageDigest = MessageDigest.getInstance("SHA-1");
        } catch (NoSuchAlgorithmException e) {
        }
        messageDigest.update(this.consumerSecret.getBytes(), 0, this.consumerSecret.length());
        return String.format("%1$040X", new BigInteger(1, messageDigest.digest())).substring(32);
    }

    private boolean hasDropboxApp(Intent intent) {
        ResolveInfo resolveActivity;
        PackageManager packageManager = getPackageManager();
        if (packageManager.queryIntentActivities(intent, 0).size() == 0 || (resolveActivity = packageManager.resolveActivity(intent, 0)) == null) {
            return false;
        }
        try {
            Signature[] signatureArr = packageManager.getPackageInfo(resolveActivity.activityInfo.packageName, 64).signatures;
            for (Signature signature : signatureArr) {
                for (String str : DROPBOX_APP_SIGNATURES) {
                    if (str.equals(signature.toCharsString())) {
                        return true;
                    }
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    private void startWebAuth() {
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(RESTUtility.buildURL("www.dropbox.com", 1, "/connect", new String[]{"k", this.consumerKey, SardineUtil.CUSTOM_NAMESPACE_PREFIX, getConsumerSig()}))));
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        if (bundle != null) {
            this.consumerKey = bundle.getString("consumerKey");
            this.consumerSecret = bundle.getString("consumerSecret");
            this.hasDelegated = bundle.getBoolean("hasDelegated");
        }
        if (this.consumerKey == null) {
            Intent intent = getIntent();
            this.consumerKey = intent.getStringExtra(EXTRA_INTERNAL_CONSUMER_KEY);
            this.consumerSecret = intent.getStringExtra(EXTRA_INTERNAL_CONSUMER_SECRET);
        }
        setTheme(R.style.Theme.Translucent.NoTitleBar);
        super.onCreate(bundle);
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        String str;
        String str2;
        String str3 = null;
        if (intent.hasExtra(EXTRA_ACCESS_TOKEN)) {
            str2 = intent.getStringExtra(EXTRA_ACCESS_TOKEN);
            str = intent.getStringExtra(EXTRA_ACCESS_SECRET);
            str3 = intent.getStringExtra(EXTRA_UID);
        } else {
            Uri data = intent.getData();
            if (data == null || !"/connect".equals(data.getPath())) {
                str = null;
                str2 = null;
            } else {
                try {
                    str2 = data.getQueryParameter("oauth_token");
                    try {
                        str = data.getQueryParameter(OAuth.OAUTH_TOKEN_SECRET);
                        try {
                            str3 = data.getQueryParameter(BDAccountManager.KEY_UID);
                        } catch (UnsupportedOperationException e) {
                        }
                    } catch (UnsupportedOperationException e2) {
                        str = null;
                    }
                } catch (UnsupportedOperationException e3) {
                    str = null;
                    str2 = null;
                }
            }
        }
        lastResult = new Intent();
        if (str2 != null && !str2.equals("") && str != null && !str.equals("") && str3 != null && !str3.equals("")) {
            lastResult.putExtra(EXTRA_ACCESS_TOKEN, str2);
            lastResult.putExtra(EXTRA_ACCESS_SECRET, str);
            lastResult.putExtra(EXTRA_UID, str3);
        }
        this.gotNewIntent = true;
        finish();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.consumerKey == null || this.consumerSecret == null) {
            finish();
            return;
        }
        if (this.hasDelegated) {
            if (this.gotNewIntent) {
                return;
            }
            lastResult = new Intent();
            finish();
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.dropbox.android", "com.dropbox.android.activity.auth.DropboxAuth");
        intent.setAction(ACTION_AUTHENTICATE_V1);
        intent.putExtra(EXTRA_CONSUMER_KEY, this.consumerKey);
        intent.putExtra(EXTRA_CONSUMER_SIG, getConsumerSig());
        intent.putExtra(EXTRA_CALLING_PACKAGE, getPackageName());
        if (hasDropboxApp(intent)) {
            startActivity(intent);
        } else {
            startWebAuth();
        }
        this.hasDelegated = true;
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("consumerKey", this.consumerKey);
        bundle.putString("consumerSecret", this.consumerSecret);
        bundle.putBoolean("hasDelegated", this.hasDelegated);
    }
}

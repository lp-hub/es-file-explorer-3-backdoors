package com.baidu.sapi2.loginshare;

import java.util.ArrayList;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* loaded from: classes.dex */
public class StatisticsHelper {
    static final int ACTION_APP = 2;
    static final int ACTION_USER = 1;
    private static final String SNAME_APP = "ServiceAppCount";
    private static final String SNAME_USER = "EffectUserCount";
    private String mAppId;
    private boolean mEnable = false;
    private String mTpl;

    /* loaded from: classes.dex */
    class UploadTask implements Runnable {
        private static final String ENCODING = "utf-8";
        private static final String KEY_APPID = "appid";
        private static final String KEY_BDUSS = "bduss";
        private static final String KEY_SNAME = "sName";
        private static final String KEY_TPL = "tpl";
        private static final int TIME_OUT = 15000;
        private String mBduss;
        private HttpClient mHttpClient;
        private HttpParams mHttpParams;
        private String mSname;
        private String mUrl;

        UploadTask(String str, String str2, String str3) {
            this.mUrl = null;
            this.mBduss = null;
            this.mSname = null;
            this.mHttpClient = null;
            this.mHttpParams = null;
            this.mUrl = str;
            this.mBduss = str2;
            this.mSname = str3;
            this.mHttpParams = new BasicHttpParams();
            HttpConnectionParams.setConnectionTimeout(this.mHttpParams, TIME_OUT);
            HttpConnectionParams.setSoTimeout(this.mHttpParams, TIME_OUT);
            this.mHttpClient = new DefaultHttpClient(this.mHttpParams);
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new BasicNameValuePair(KEY_APPID, StatisticsHelper.this.mAppId));
            arrayList.add(new BasicNameValuePair(KEY_BDUSS, this.mBduss));
            arrayList.add(new BasicNameValuePair(KEY_TPL, StatisticsHelper.this.mTpl));
            arrayList.add(new BasicNameValuePair(KEY_SNAME, this.mSname));
            try {
                HttpPost httpPost = new HttpPost(this.mUrl);
                httpPost.setEntity(new UrlEncodedFormEntity(arrayList, ENCODING));
                this.mHttpClient.execute(httpPost);
            } catch (Exception e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StatisticsHelper(String str, String str2) {
        this.mTpl = null;
        this.mAppId = null;
        this.mTpl = str;
        this.mAppId = str2;
    }

    void destroy() {
        this.mTpl = null;
        this.mAppId = null;
        this.mEnable = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void doUpload(int i, String str) {
        if (this.mEnable && Utils.isValid(str)) {
            UploadTask uploadTask = null;
            switch (i) {
                case 1:
                    uploadTask = new UploadTask(Keystore.getStatisticsUserUrl(), str, SNAME_USER);
                    break;
                case 2:
                    uploadTask = new UploadTask(Keystore.getStatisticsAppUrl(), str, SNAME_APP);
                    break;
            }
            if (uploadTask != null) {
                new Thread(uploadTask).start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onActivityCreate() {
        this.mEnable = true;
    }
}

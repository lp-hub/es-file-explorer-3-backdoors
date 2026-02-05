package com.estrongs.android.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.http.SslError;
import android.os.Build;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.estrongs.android.pop.C0000R;
import java.security.KeyStore;
import jcifs.https.Handler;
import jcifs.smb.SmbConstants;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;

/* loaded from: classes.dex */
public class ab {
    public static String a(HttpResponse httpResponse) {
        byte[] byteArray = EntityUtils.toByteArray(httpResponse.getEntity());
        return byteArray != null ? new String(byteArray, "utf-8") : "";
    }

    public static HttpClient a(HttpParams httpParams) {
        try {
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            ae aeVar = new ae(keyStore);
            aeVar.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            HttpParams basicHttpParams = httpParams == null ? new BasicHttpParams() : httpParams.copy();
            HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(basicHttpParams, "UTF-8");
            SchemeRegistry schemeRegistry = new SchemeRegistry();
            schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
            schemeRegistry.register(new Scheme("https", aeVar, Handler.DEFAULT_HTTPS_PORT));
            ThreadSafeClientConnManager threadSafeClientConnManager = new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry);
            if (HttpConnectionParams.getConnectionTimeout(basicHttpParams) == 0) {
                HttpConnectionParams.setConnectionTimeout(basicHttpParams, SmbConstants.DEFAULT_RESPONSE_TIMEOUT);
            }
            if (HttpConnectionParams.getSoTimeout(basicHttpParams) == 0) {
                HttpConnectionParams.setSoTimeout(basicHttpParams, SmbConstants.DEFAULT_RESPONSE_TIMEOUT);
            }
            return new DefaultHttpClient(threadSafeClientConnManager, basicHttpParams);
        } catch (Exception e) {
            return new DefaultHttpClient();
        }
    }

    @TargetApi(8)
    public static void a(Context context, WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (Build.VERSION.SDK_INT < 8) {
            return;
        }
        com.estrongs.android.ui.b.ag a2 = new com.estrongs.android.ui.b.aq(context).a();
        int i = C0000R.string.unknown_error;
        if (sslError != null) {
            switch (sslError.getPrimaryError()) {
                case 0:
                    i = C0000R.string.ssl_error_not_yet_valid;
                    break;
                case 1:
                    i = C0000R.string.ssl_error_expired;
                    break;
                case 2:
                    i = C0000R.string.ssl_error_id_mismatch;
                    break;
                case 3:
                    i = C0000R.string.ssl_error_untrusted;
                    break;
                case 4:
                    i = C0000R.string.ssl_error_date_invalid;
                    break;
                case 5:
                    i = C0000R.string.ssl_error_invalid;
                    break;
            }
        }
        String format = String.format("%s %s", context.getString(i), context.getString(C0000R.string.use_invalidate_certificate_anyway));
        a2.setTitle(C0000R.string.invalidate_certificate_notify_title);
        a2.setMessage(format);
        a2.setConfirmButton(context.getString(C0000R.string.confirm_ok), new ac(sslErrorHandler));
        a2.setCancelButton(context.getString(C0000R.string.confirm_cancel), new ad(sslErrorHandler));
        a2.setCanceledOnTouchOutside(false);
        a2.show();
    }

    public static void a(HttpClient httpClient) {
        if (httpClient == null || httpClient.getConnectionManager() == null) {
            return;
        }
        httpClient.getConnectionManager().shutdown();
    }
}

package com.baidu.sapi2.http;

import android.os.SystemClock;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.HashSet;
import java.util.Iterator;
import javax.net.ssl.SSLException;
import org.apache.http.NoHttpResponseException;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

/* loaded from: classes.dex */
class RetryHandler implements HttpRequestRetryHandler {
    private static final int RETRY_SLEEP_TIME_MILLIS = 1500;
    private final int maxRetries;
    private static HashSet<Class<?>> exceptionWhitelist = new HashSet<>();
    private static HashSet<Class<?>> exceptionBlacklist = new HashSet<>();

    static {
        exceptionWhitelist.add(NoHttpResponseException.class);
        exceptionWhitelist.add(UnknownHostException.class);
        exceptionWhitelist.add(SocketException.class);
        exceptionBlacklist.add(InterruptedIOException.class);
        exceptionBlacklist.add(SSLException.class);
    }

    public RetryHandler(int i) {
        this.maxRetries = i;
    }

    protected boolean isInList(HashSet<Class<?>> hashSet, Throwable th) {
        Iterator<Class<?>> it = hashSet.iterator();
        while (it.hasNext()) {
            if (it.next().isInstance(th)) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.http.client.HttpRequestRetryHandler
    public boolean retryRequest(IOException iOException, int i, HttpContext httpContext) {
        boolean z = true;
        Boolean bool = (Boolean) httpContext.getAttribute("http.request_sent");
        boolean z2 = i > this.maxRetries ? false : isInList(exceptionBlacklist, iOException) ? false : isInList(exceptionWhitelist, iOException) ? true : !(bool != null && bool.booleanValue()) ? true : true;
        if (!z2) {
            z = z2;
        } else if (((HttpUriRequest) httpContext.getAttribute("http.request")).getMethod().equals("POST")) {
            z = false;
        }
        if (z) {
            SystemClock.sleep(1500L);
        } else {
            iOException.printStackTrace();
        }
        return z;
    }
}

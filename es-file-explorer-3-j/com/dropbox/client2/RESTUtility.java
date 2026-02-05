package com.dropbox.client2;

import com.baidu.sapi2.loginshare.Utils;
import com.dropbox.client2.DropboxAPI;
import com.dropbox.client2.exception.DropboxException;
import com.dropbox.client2.exception.DropboxIOException;
import com.dropbox.client2.exception.DropboxParseException;
import com.dropbox.client2.exception.DropboxSSLException;
import com.dropbox.client2.exception.DropboxServerException;
import com.dropbox.client2.exception.DropboxUnlinkedException;
import com.dropbox.client2.session.Session;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
import javax.net.ssl.SSLException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpConnectionParams;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/* loaded from: classes.dex */
public class RESTUtility {
    private static final DateFormat dateFormat = new SimpleDateFormat("EEE, dd MMM yyyy kk:mm:ss ZZZZZ", Locale.US);

    /* loaded from: classes.dex */
    public enum RequestMethod {
        GET,
        POST
    }

    private RESTUtility() {
    }

    public static String buildURL(String str, int i, String str2, String[] strArr) {
        if (!str2.startsWith("/")) {
            str2 = "/" + str2;
        }
        try {
            String replace = URLEncoder.encode("/" + i + str2, "UTF-8").replace("%2F", "/");
            if (strArr != null && strArr.length > 0) {
                replace = replace + "?" + urlencode(strArr);
            }
            return Utils.https + str + ":443" + replace.replace("+", "%20").replace("*", "%2A");
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    public static HttpResponse execute(Session session, HttpUriRequest httpUriRequest) {
        return execute(session, httpUriRequest, -1);
    }

    public static HttpResponse execute(Session session, HttpUriRequest httpUriRequest, int i) {
        HttpClient updatedHttpClient = updatedHttpClient(session);
        session.setRequestTimeout(httpUriRequest);
        if (i >= 0) {
            HttpConnectionParams.setSoTimeout(httpUriRequest.getParams(), i);
        }
        HttpResponse httpResponse = null;
        for (int i2 = 0; httpResponse == null && i2 < 5; i2++) {
            try {
                try {
                    httpResponse = updatedHttpClient.execute(httpUriRequest);
                } catch (NullPointerException e) {
                }
                if (httpResponse == null) {
                    updateClientProxy(updatedHttpClient, session);
                }
            } catch (SSLException e2) {
                throw new DropboxSSLException(e2);
            } catch (IOException e3) {
                throw new DropboxIOException(e3);
            } catch (OutOfMemoryError e4) {
                throw new DropboxException(e4);
            }
        }
        if (httpResponse == null) {
            throw new DropboxIOException("Apache HTTPClient encountered an error. No response, try again.");
        }
        int statusCode = httpResponse.getStatusLine().getStatusCode();
        if (statusCode != 200 && statusCode != 206) {
            parseAsJSON(httpResponse);
        }
        return httpResponse;
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0049: MOVE (r2 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:44:0x0049 */
    public static Object parseAsJSON(HttpResponse httpResponse) {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2;
        BufferedReader bufferedReader3 = null;
        Object obj = null;
        BufferedReader bufferedReader4 = null;
        try {
            try {
                try {
                    HttpEntity entity = httpResponse.getEntity();
                    if (entity != null) {
                        bufferedReader2 = new BufferedReader(new InputStreamReader(entity.getContent()), 16384);
                        try {
                            bufferedReader2.mark(16384);
                            obj = new JSONParser().parse(bufferedReader2);
                        } catch (IOException e) {
                            e = e;
                            throw new DropboxIOException(e);
                        } catch (OutOfMemoryError e2) {
                            e = e2;
                            throw new DropboxException(e);
                        } catch (ParseException e3) {
                            bufferedReader4 = bufferedReader2;
                            if (DropboxServerException.isValidWithNullBody(httpResponse)) {
                                throw new DropboxServerException(httpResponse);
                            }
                            throw new DropboxParseException(bufferedReader4);
                        }
                    } else {
                        bufferedReader2 = null;
                    }
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e4) {
                        }
                    }
                    int statusCode = httpResponse.getStatusLine().getStatusCode();
                    if (statusCode == 200) {
                        return obj;
                    }
                    if (statusCode == 401) {
                        throw new DropboxUnlinkedException();
                    }
                    throw new DropboxServerException(httpResponse, obj);
                } catch (Throwable th) {
                    th = th;
                    bufferedReader3 = bufferedReader;
                    if (bufferedReader3 != null) {
                        try {
                            bufferedReader3.close();
                        } catch (IOException e5) {
                        }
                    }
                    throw th;
                }
            } catch (IOException e6) {
                e = e6;
            } catch (OutOfMemoryError e7) {
                e = e7;
            } catch (ParseException e8) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static Map<String, String> parseAsQueryString(HttpResponse httpResponse) {
        HttpEntity entity = httpResponse.getEntity();
        if (entity == null) {
            throw new DropboxParseException("Bad response from Dropbox.");
        }
        try {
            Scanner useDelimiter = new Scanner(entity.getContent()).useDelimiter("&");
            HashMap hashMap = new HashMap();
            while (useDelimiter.hasNext()) {
                String[] split = useDelimiter.next().split("=");
                if (split.length != 2) {
                    throw new DropboxParseException("Bad query string from Dropbox.");
                }
                hashMap.put(split[0], split[1]);
            }
            return hashMap;
        } catch (IOException e) {
            throw new DropboxIOException(e);
        }
    }

    public static Date parseDate(String str) {
        try {
            return dateFormat.parse(str);
        } catch (java.text.ParseException e) {
            return null;
        }
    }

    public static Object request(RequestMethod requestMethod, String str, String str2, int i, String[] strArr, Session session) {
        return parseAsJSON(streamRequest(requestMethod, str, str2, i, strArr, session).response);
    }

    public static DropboxAPI.RequestAndResponse streamRequest(RequestMethod requestMethod, String str, String str2, int i, String[] strArr, Session session) {
        HttpUriRequest httpUriRequest;
        if (requestMethod == RequestMethod.GET) {
            httpUriRequest = new HttpGet(buildURL(str, i, str2, strArr));
        } else {
            HttpPost httpPost = new HttpPost(buildURL(str, i, str2, null));
            if (strArr != null && strArr.length >= 2) {
                if (strArr.length % 2 != 0) {
                    throw new IllegalArgumentException("Params must have an even number of elements.");
                }
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < strArr.length; i2 += 2) {
                    if (strArr[i2 + 1] != null) {
                        arrayList.add(new BasicNameValuePair(strArr[i2], strArr[i2 + 1]));
                    }
                }
                try {
                    httpPost.setEntity(new UrlEncodedFormEntity(arrayList, "UTF-8"));
                } catch (UnsupportedEncodingException e) {
                    throw new DropboxException(e);
                }
            }
            httpUriRequest = httpPost;
        }
        session.sign(httpUriRequest);
        return new DropboxAPI.RequestAndResponse(httpUriRequest, execute(session, httpUriRequest));
    }

    private static void updateClientProxy(HttpClient httpClient, Session session) {
        Session.ProxyInfo proxyInfo = session.getProxyInfo();
        if (proxyInfo == null || proxyInfo.host == null || proxyInfo.host.equals("")) {
            httpClient.getParams().removeParameter("http.route.default-proxy");
        } else {
            httpClient.getParams().setParameter("http.route.default-proxy", proxyInfo.port < 0 ? new HttpHost(proxyInfo.host) : new HttpHost(proxyInfo.host, proxyInfo.port));
        }
    }

    private static synchronized HttpClient updatedHttpClient(Session session) {
        HttpClient httpClient;
        synchronized (RESTUtility.class) {
            httpClient = session.getHttpClient();
            updateClientProxy(httpClient, session);
        }
        return httpClient;
    }

    private static String urlencode(String[] strArr) {
        if (strArr.length % 2 != 0) {
            throw new IllegalArgumentException("Params must have an even number of elements.");
        }
        String str = "";
        boolean z = true;
        for (int i = 0; i < strArr.length; i += 2) {
            try {
                if (strArr[i + 1] != null) {
                    if (z) {
                        z = false;
                    } else {
                        str = str + "&";
                    }
                    str = str + URLEncoder.encode(strArr[i], "UTF-8") + "=" + URLEncoder.encode(strArr[i + 1], "UTF-8");
                }
            } catch (UnsupportedEncodingException e) {
                return null;
            }
        }
        str.replace("*", "%2A");
        return str;
    }
}

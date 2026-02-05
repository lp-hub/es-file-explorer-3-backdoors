package com.dropbox.client2.exception;

import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

/* loaded from: classes.dex */
public class DropboxServerException extends DropboxException {
    public static final int _200_OK = 200;
    public static final int _206_PARTIAL_CONTENT = 206;
    public static final int _302_FOUND = 302;
    public static final int _304_NOT_MODIFIED = 304;
    public static final int _400_BAD_REQUEST = 400;
    public static final int _401_UNAUTHORIZED = 401;
    public static final int _403_FORBIDDEN = 403;
    public static final int _404_NOT_FOUND = 404;
    public static final int _405_METHOD_NOT_ALLOWED = 405;
    public static final int _406_NOT_ACCEPTABLE = 406;
    public static final int _409_CONFLICT = 409;
    public static final int _411_LENGTH_REQUIRED = 411;
    public static final int _415_UNSUPPORTED_MEDIA = 415;
    public static final int _500_INTERNAL_SERVER_ERROR = 500;
    public static final int _501_NOT_IMPLEMENTED = 501;
    public static final int _502_BAD_GATEWAY = 502;
    public static final int _503_SERVICE_UNAVAILABLE = 503;
    public static final int _507_INSUFFICIENT_STORAGE = 507;
    private static final long serialVersionUID = 1;
    public Error body;
    public int error;
    public String location;
    public Map<String, Object> parsedResponse;
    public String reason;
    public String server;

    /* loaded from: classes.dex */
    public class Error {
        public String error;
        public Map<String, Object> fields;
        public String userError;

        public Error(Map<String, Object> map) {
            this.fields = map;
            Object obj = map.get("error");
            if (obj instanceof String) {
                this.error = (String) obj;
            } else if (obj instanceof Map) {
                for (Object obj2 : ((Map) obj).values()) {
                    if (obj2 instanceof String) {
                        this.error = (String) obj2;
                    }
                }
            }
            Object obj3 = map.get("user_error");
            if (obj3 instanceof String) {
                this.userError = (String) obj3;
            }
        }
    }

    public DropboxServerException(HttpResponse httpResponse) {
        fillInStackTrace();
        StatusLine statusLine = httpResponse.getStatusLine();
        this.error = statusLine.getStatusCode();
        this.reason = statusLine.getReasonPhrase();
        this.server = getHeader(httpResponse, "server");
        this.location = getHeader(httpResponse, "location");
    }

    public DropboxServerException(HttpResponse httpResponse, Object obj) {
        this(httpResponse);
        if (obj == null || !(obj instanceof Map)) {
            return;
        }
        this.parsedResponse = (Map) obj;
        this.body = new Error(this.parsedResponse);
    }

    private static String getHeader(HttpResponse httpResponse, String str) {
        Header firstHeader = httpResponse.getFirstHeader(str);
        if (firstHeader != null) {
            return firstHeader.getValue();
        }
        return null;
    }

    public static boolean isValidWithNullBody(HttpResponse httpResponse) {
        int indexOf;
        String substring;
        int indexOf2;
        int statusCode = httpResponse.getStatusLine().getStatusCode();
        if (statusCode == 302) {
            String header = getHeader(httpResponse, "location");
            if (header != null && (indexOf = header.indexOf("://")) > -1 && (indexOf2 = (substring = header.substring(indexOf + 3)).indexOf("/")) > -1 && substring.substring(0, indexOf2).toLowerCase().contains("dropbox.com")) {
                return true;
            }
        } else if (statusCode == 304) {
            return true;
        }
        return false;
    }

    public boolean isDuplicateAccount() {
        return this.error == 400 && this.body != null && this.body.error.contains("taken");
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "DropboxServerException (" + this.server + "): " + this.error + " " + this.reason + " (" + this.body.error + ")";
    }
}

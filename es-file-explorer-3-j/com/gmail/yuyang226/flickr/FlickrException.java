package com.gmail.yuyang226.flickr;

/* loaded from: classes.dex */
public class FlickrException extends Exception {
    private static final long serialVersionUID = 7958091410349084831L;
    private String errorCode;
    private String errorMessage;

    public FlickrException(String str) {
        super(str);
    }

    public FlickrException(String str, String str2) {
        super(String.valueOf(str) + ": " + str2);
        this.errorCode = str;
        this.errorMessage = str2;
    }

    public FlickrException(String str, Throwable th) {
        super(str, th);
    }

    public FlickrException(Throwable th) {
        super(th);
    }

    public String getErrorCode() {
        return this.errorCode;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }
}

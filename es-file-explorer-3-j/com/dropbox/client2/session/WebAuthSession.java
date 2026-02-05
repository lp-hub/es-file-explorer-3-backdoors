package com.dropbox.client2.session;

import com.baidu.sapi2.BDAccountManager;
import com.dropbox.client2.RESTUtility;
import com.dropbox.client2.exception.DropboxParseException;
import com.dropbox.client2.session.Session;
import java.util.Map;
import oauth.signpost.OAuth;

/* loaded from: classes.dex */
public class WebAuthSession extends AbstractSession {

    /* loaded from: classes.dex */
    public final class WebAuthInfo {
        public final RequestTokenPair requestTokenPair;
        public final String url;

        private WebAuthInfo(String str, RequestTokenPair requestTokenPair) {
            this.url = str;
            this.requestTokenPair = requestTokenPair;
        }
    }

    public WebAuthSession(AppKeyPair appKeyPair, Session.AccessType accessType) {
        super(appKeyPair, accessType);
    }

    public WebAuthSession(AppKeyPair appKeyPair, Session.AccessType accessType, AccessTokenPair accessTokenPair) {
        super(appKeyPair, accessType, accessTokenPair);
    }

    private Map<String, String> setUpToken(String str) {
        Map<String, String> parseAsQueryString = RESTUtility.parseAsQueryString(RESTUtility.streamRequest(RESTUtility.RequestMethod.GET, getAPIServer(), str, 1, new String[]{"locale", getLocale().toString()}, this).response);
        if (!parseAsQueryString.containsKey("oauth_token") || !parseAsQueryString.containsKey(OAuth.OAUTH_TOKEN_SECRET)) {
            throw new DropboxParseException("Did not get tokens from Dropbox");
        }
        setAccessTokenPair(new AccessTokenPair(parseAsQueryString.get("oauth_token"), parseAsQueryString.get(OAuth.OAUTH_TOKEN_SECRET)));
        return parseAsQueryString;
    }

    public WebAuthInfo getAuthInfo() {
        return getAuthInfo(null);
    }

    public WebAuthInfo getAuthInfo(String str) {
        setUpToken("/oauth/request_token");
        AccessTokenPair accessTokenPair = getAccessTokenPair();
        RequestTokenPair requestTokenPair = new RequestTokenPair(accessTokenPair.key, accessTokenPair.secret);
        return new WebAuthInfo(RESTUtility.buildURL(getWebServer(), 1, "/oauth/authorize", str != null ? new String[]{"oauth_token", requestTokenPair.key, OAuth.OAUTH_CALLBACK, str, "locale", getLocale().toString()} : new String[]{"oauth_token", requestTokenPair.key, "locale", getLocale().toString()}), requestTokenPair);
    }

    public String retrieveWebAccessToken(RequestTokenPair requestTokenPair) {
        setAccessTokenPair(requestTokenPair);
        return setUpToken("/oauth/access_token").get(BDAccountManager.KEY_UID);
    }
}

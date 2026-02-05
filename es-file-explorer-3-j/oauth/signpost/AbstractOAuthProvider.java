package oauth.signpost;

import com.dropbox.client2.exception.DropboxServerException;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import oauth.signpost.exception.OAuthCommunicationException;
import oauth.signpost.exception.OAuthExpectationFailedException;
import oauth.signpost.exception.OAuthNotAuthorizedException;
import oauth.signpost.http.HttpParameters;
import oauth.signpost.http.HttpRequest;
import oauth.signpost.http.HttpResponse;

/* loaded from: classes.dex */
public abstract class AbstractOAuthProvider implements OAuthProvider {
    private static final long serialVersionUID = 1;
    private String accessTokenEndpointUrl;
    private String authorizationWebsiteUrl;
    private boolean isOAuth10a;
    private transient OAuthProviderListener listener;
    private String requestTokenEndpointUrl;
    private HttpParameters responseParameters = new HttpParameters();
    private Map<String, String> defaultHeaders = new HashMap();

    public AbstractOAuthProvider(String str, String str2, String str3) {
        this.requestTokenEndpointUrl = str;
        this.accessTokenEndpointUrl = str2;
        this.authorizationWebsiteUrl = str3;
    }

    protected void closeConnection(HttpRequest httpRequest, HttpResponse httpResponse) {
    }

    protected abstract HttpRequest createRequest(String str);

    @Override // oauth.signpost.OAuthProvider
    public String getAccessTokenEndpointUrl() {
        return this.accessTokenEndpointUrl;
    }

    @Override // oauth.signpost.OAuthProvider
    public String getAuthorizationWebsiteUrl() {
        return this.authorizationWebsiteUrl;
    }

    @Override // oauth.signpost.OAuthProvider
    public Map<String, String> getRequestHeaders() {
        return this.defaultHeaders;
    }

    @Override // oauth.signpost.OAuthProvider
    public String getRequestTokenEndpointUrl() {
        return this.requestTokenEndpointUrl;
    }

    protected String getResponseParameter(String str) {
        return this.responseParameters.getFirst(str);
    }

    @Override // oauth.signpost.OAuthProvider
    public HttpParameters getResponseParameters() {
        return this.responseParameters;
    }

    protected void handleUnexpectedResponse(int i, HttpResponse httpResponse) {
        if (httpResponse == null) {
            return;
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpResponse.getContent()));
        StringBuilder sb = new StringBuilder();
        for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
            sb.append(readLine);
        }
        switch (i) {
            case DropboxServerException._401_UNAUTHORIZED /* 401 */:
                throw new OAuthNotAuthorizedException(sb.toString());
            default:
                throw new OAuthCommunicationException("Service provider responded in error: " + i + " (" + httpResponse.getReasonPhrase() + ")", sb.toString());
        }
    }

    @Override // oauth.signpost.OAuthProvider
    public boolean isOAuth10a() {
        return this.isOAuth10a;
    }

    @Override // oauth.signpost.OAuthProvider
    public void removeListener(OAuthProviderListener oAuthProviderListener) {
        this.listener = null;
    }

    @Override // oauth.signpost.OAuthProvider
    public void retrieveAccessToken(OAuthConsumer oAuthConsumer, String str) {
        if (oAuthConsumer.getToken() == null || oAuthConsumer.getTokenSecret() == null) {
            throw new OAuthExpectationFailedException("Authorized request token or token secret not set. Did you retrieve an authorized request token before?");
        }
        if (!this.isOAuth10a || str == null) {
            retrieveToken(oAuthConsumer, this.accessTokenEndpointUrl, new String[0]);
        } else {
            retrieveToken(oAuthConsumer, this.accessTokenEndpointUrl, OAuth.OAUTH_VERIFIER, str);
        }
    }

    @Override // oauth.signpost.OAuthProvider
    public String retrieveRequestToken(OAuthConsumer oAuthConsumer, String str) {
        oAuthConsumer.setTokenWithSecret(null, null);
        retrieveToken(oAuthConsumer, this.requestTokenEndpointUrl, OAuth.OAUTH_CALLBACK, str);
        String first = this.responseParameters.getFirst(OAuth.OAUTH_CALLBACK_CONFIRMED);
        this.responseParameters.remove((Object) OAuth.OAUTH_CALLBACK_CONFIRMED);
        this.isOAuth10a = Boolean.TRUE.toString().equals(first);
        return this.isOAuth10a ? OAuth.addQueryParameters(this.authorizationWebsiteUrl, "oauth_token", oAuthConsumer.getToken()) : OAuth.addQueryParameters(this.authorizationWebsiteUrl, "oauth_token", oAuthConsumer.getToken(), OAuth.OAUTH_CALLBACK, str);
    }

    protected void retrieveToken(OAuthConsumer oAuthConsumer, String str, String... strArr) {
        HttpRequest httpRequest;
        HttpResponse httpResponse;
        HttpResponse httpResponse2 = null;
        Map<String, String> requestHeaders = getRequestHeaders();
        if (oAuthConsumer.getConsumerKey() != null) {
            try {
                if (oAuthConsumer.getConsumerSecret() != null) {
                    try {
                        httpRequest = createRequest(str);
                        try {
                            for (String str2 : requestHeaders.keySet()) {
                                httpRequest.setHeader(str2, requestHeaders.get(str2));
                            }
                            if (strArr != null) {
                                HttpParameters httpParameters = new HttpParameters();
                                httpParameters.putAll(strArr, true);
                                oAuthConsumer.setAdditionalParameters(httpParameters);
                            }
                            if (this.listener != null) {
                                this.listener.prepareRequest(httpRequest);
                            }
                            oAuthConsumer.sign(httpRequest);
                            if (this.listener != null) {
                                this.listener.prepareSubmission(httpRequest);
                            }
                            httpResponse = sendRequest(httpRequest);
                        } catch (OAuthExpectationFailedException e) {
                            throw e;
                        } catch (OAuthNotAuthorizedException e2) {
                            e = e2;
                            httpResponse = null;
                            httpResponse2 = httpRequest;
                        } catch (Exception e3) {
                            e = e3;
                        }
                        try {
                            int statusCode = httpResponse.getStatusCode();
                            if (this.listener != null ? this.listener.onResponseReceived(httpRequest, httpResponse) : false) {
                                try {
                                    closeConnection(httpRequest, httpResponse);
                                    return;
                                } catch (Exception e4) {
                                    throw new OAuthCommunicationException(e4);
                                }
                            }
                            if (statusCode >= 300) {
                                handleUnexpectedResponse(statusCode, httpResponse);
                            }
                            HttpParameters decodeForm = OAuth.decodeForm(httpResponse.getContent());
                            String first = decodeForm.getFirst("oauth_token");
                            String first2 = decodeForm.getFirst(OAuth.OAUTH_TOKEN_SECRET);
                            decodeForm.remove("oauth_token");
                            decodeForm.remove(OAuth.OAUTH_TOKEN_SECRET);
                            setResponseParameters(decodeForm);
                            if (first == null || first2 == null) {
                                throw new OAuthExpectationFailedException("Request token or token secret not set in server reply. The service provider you use is probably buggy.");
                            }
                            oAuthConsumer.setTokenWithSecret(first, first2);
                            try {
                                closeConnection(httpRequest, httpResponse);
                                return;
                            } catch (Exception e5) {
                                throw new OAuthCommunicationException(e5);
                            }
                        } catch (OAuthExpectationFailedException e6) {
                            throw e6;
                        } catch (OAuthNotAuthorizedException e7) {
                            e = e7;
                            httpResponse2 = httpRequest;
                            try {
                                throw e;
                            } catch (Throwable th) {
                                th = th;
                                httpRequest = httpResponse2;
                                httpResponse2 = httpResponse;
                                try {
                                    closeConnection(httpRequest, httpResponse2);
                                    throw th;
                                } catch (Exception e8) {
                                    throw new OAuthCommunicationException(e8);
                                }
                            }
                        } catch (Exception e9) {
                            e = e9;
                            throw new OAuthCommunicationException(e);
                        } catch (Throwable th2) {
                            th = th2;
                            httpResponse2 = httpResponse;
                            closeConnection(httpRequest, httpResponse2);
                            throw th;
                        }
                    } catch (OAuthExpectationFailedException e10) {
                        throw e10;
                    } catch (OAuthNotAuthorizedException e11) {
                        e = e11;
                        httpResponse = null;
                    } catch (Exception e12) {
                        e = e12;
                    } catch (Throwable th3) {
                        th = th3;
                        httpRequest = null;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
        throw new OAuthExpectationFailedException("Consumer key or secret not set");
    }

    protected abstract HttpResponse sendRequest(HttpRequest httpRequest);

    @Override // oauth.signpost.OAuthProvider
    public void setListener(OAuthProviderListener oAuthProviderListener) {
        this.listener = oAuthProviderListener;
    }

    @Override // oauth.signpost.OAuthProvider
    public void setOAuth10a(boolean z) {
        this.isOAuth10a = z;
    }

    @Override // oauth.signpost.OAuthProvider
    public void setRequestHeader(String str, String str2) {
        this.defaultHeaders.put(str, str2);
    }

    @Override // oauth.signpost.OAuthProvider
    public void setResponseParameters(HttpParameters httpParameters) {
        this.responseParameters = httpParameters;
    }
}

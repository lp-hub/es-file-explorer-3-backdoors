package oauth.signpost.http;

import java.io.InputStream;

/* loaded from: classes.dex */
public interface HttpResponse {
    InputStream getContent();

    String getReasonPhrase();

    int getStatusCode();

    Object unwrap();
}

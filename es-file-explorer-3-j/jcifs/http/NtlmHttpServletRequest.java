package jcifs.http;

import java.security.Principal;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

/* loaded from: classes.dex */
class NtlmHttpServletRequest extends HttpServletRequestWrapper {
    Principal principal;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NtlmHttpServletRequest(HttpServletRequest httpServletRequest, Principal principal) {
        super(httpServletRequest);
        this.principal = principal;
    }

    public String getAuthType() {
        return "NTLM";
    }

    public String getRemoteUser() {
        return this.principal.getName();
    }

    public Principal getUserPrincipal() {
        return this.principal;
    }
}

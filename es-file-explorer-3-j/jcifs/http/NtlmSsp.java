package jcifs.http;

import com.dropbox.client2.exception.DropboxServerException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import jcifs.ntlmssp.NtlmFlags;
import jcifs.ntlmssp.Type1Message;
import jcifs.ntlmssp.Type2Message;
import jcifs.ntlmssp.Type3Message;
import jcifs.smb.NtlmPasswordAuthentication;
import jcifs.util.Base64;
import oauth.signpost.OAuth;

/* loaded from: classes.dex */
public class NtlmSsp implements NtlmFlags {
    public static NtlmPasswordAuthentication authenticate(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, byte[] bArr) {
        String header = httpServletRequest.getHeader(OAuth.HTTP_AUTHORIZATION_HEADER);
        if (header == null || !header.startsWith("NTLM ")) {
            httpServletResponse.setHeader("WWW-Authenticate", "NTLM");
        } else {
            byte[] decode = Base64.decode(header.substring(5));
            if (decode[8] == 1) {
                httpServletResponse.setHeader("WWW-Authenticate", "NTLM " + Base64.encode(new Type2Message(new Type1Message(decode), bArr, (String) null).toByteArray()));
            } else if (decode[8] == 3) {
                Type3Message type3Message = new Type3Message(decode);
                byte[] lMResponse = type3Message.getLMResponse();
                if (lMResponse == null) {
                    lMResponse = new byte[0];
                }
                byte[] nTResponse = type3Message.getNTResponse();
                if (nTResponse == null) {
                    nTResponse = new byte[0];
                }
                return new NtlmPasswordAuthentication(type3Message.getDomain(), type3Message.getUser(), bArr, lMResponse, nTResponse);
            }
        }
        httpServletResponse.setStatus(DropboxServerException._401_UNAUTHORIZED);
        httpServletResponse.setContentLength(0);
        httpServletResponse.flushBuffer();
        return null;
    }

    public NtlmPasswordAuthentication doAuthentication(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, byte[] bArr) {
        return authenticate(httpServletRequest, httpServletResponse, bArr);
    }
}

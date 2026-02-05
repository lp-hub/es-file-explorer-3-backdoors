package com.estrongs.android.c;

import java.io.IOException;
import jcifs.ntlmssp.Type1Message;
import jcifs.ntlmssp.Type2Message;
import jcifs.ntlmssp.Type3Message;
import jcifs.util.Base64;
import org.apache.http.impl.auth.NTLMEngine;
import org.apache.http.impl.auth.NTLMEngineException;

/* loaded from: classes.dex */
public final class d implements NTLMEngine {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f262a;

    public d(b bVar) {
        this.f262a = bVar;
    }

    @Override // org.apache.http.impl.auth.NTLMEngine
    public String generateType1Msg(String str, String str2) {
        return Base64.encode(new Type1Message(-1610055676, str, str2).toByteArray());
    }

    @Override // org.apache.http.impl.auth.NTLMEngine
    public String generateType3Msg(String str, String str2, String str3, String str4, String str5) {
        try {
            Type2Message type2Message = new Type2Message(Base64.decode(str5));
            return Base64.encode(new Type3Message(type2Message, str2, str3, str, str4, type2Message.getFlags() & (-196609)).toByteArray());
        } catch (IOException e) {
            throw new NTLMEngineException("Invalid NTLM type 2 message", e);
        }
    }
}

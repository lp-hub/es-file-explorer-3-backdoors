package jcifs.smb;

import java.io.Serializable;
import jcifs.UniAddress;
import jcifs.util.Hexdump;

/* loaded from: classes.dex */
public final class NtlmChallenge implements Serializable {
    public byte[] challenge;
    public UniAddress dc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NtlmChallenge(byte[] bArr, UniAddress uniAddress) {
        this.challenge = bArr;
        this.dc = uniAddress;
    }

    public String toString() {
        return "NtlmChallenge[challenge=0x" + Hexdump.toHexString(this.challenge, 0, this.challenge.length * 2) + ",dc=" + this.dc.toString() + "]";
    }
}

package jcifs.dcerpc;

import jcifs.dcerpc.ndr.NdrBuffer;

/* loaded from: classes.dex */
public interface DcerpcSecurityProvider {
    void unwrap(NdrBuffer ndrBuffer);

    void wrap(NdrBuffer ndrBuffer);
}

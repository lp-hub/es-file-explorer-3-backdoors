package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.msrpc.lsarpc;
import jcifs.dcerpc.ndr.NdrObject;

/* loaded from: classes.dex */
public class MsrpcQueryInformationPolicy extends lsarpc.LsarQueryInformationPolicy {
    public MsrpcQueryInformationPolicy(LsaPolicyHandle lsaPolicyHandle, short s, NdrObject ndrObject) {
        super(lsaPolicyHandle, s, ndrObject);
        this.ptype = 0;
        this.flags = 3;
    }
}

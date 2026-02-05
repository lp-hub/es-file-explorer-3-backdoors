package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcHandle;
import jcifs.dcerpc.rpc;
import jcifs.smb.SmbException;

/* loaded from: classes.dex */
public class SamrDomainHandle extends rpc.policy_handle {
    public SamrDomainHandle(DcerpcHandle dcerpcHandle, SamrPolicyHandle samrPolicyHandle, int i, rpc.sid_t sid_tVar) {
        MsrpcSamrOpenDomain msrpcSamrOpenDomain = new MsrpcSamrOpenDomain(samrPolicyHandle, i, sid_tVar, this);
        dcerpcHandle.sendrecv(msrpcSamrOpenDomain);
        if (msrpcSamrOpenDomain.retval != 0) {
            throw new SmbException(msrpcSamrOpenDomain.retval, false);
        }
    }

    public void close() {
    }
}

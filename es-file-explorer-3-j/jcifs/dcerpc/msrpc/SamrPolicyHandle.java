package jcifs.dcerpc.msrpc;

import jcifs.dcerpc.DcerpcException;
import jcifs.dcerpc.DcerpcHandle;
import jcifs.dcerpc.rpc;

/* loaded from: classes.dex */
public class SamrPolicyHandle extends rpc.policy_handle {
    public SamrPolicyHandle(DcerpcHandle dcerpcHandle, String str, int i) {
        str = str == null ? "\\\\" : str;
        try {
            dcerpcHandle.sendrecv(new MsrpcSamrConnect4(str, i, this));
        } catch (DcerpcException e) {
            if (e.getErrorCode() != 469827586) {
                throw e;
            }
            dcerpcHandle.sendrecv(new MsrpcSamrConnect2(str, i, this));
        }
    }

    public void close() {
    }
}

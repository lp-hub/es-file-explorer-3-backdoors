package jcifs.dcerpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.util.Hexdump;

/* loaded from: classes.dex */
public class DcerpcBind extends DcerpcMessage {
    static final String[] result_message = {"0", "DCERPC_BIND_ERR_ABSTRACT_SYNTAX_NOT_SUPPORTED", "DCERPC_BIND_ERR_PROPOSED_TRANSFER_SYNTAXES_NOT_SUPPORTED", "DCERPC_BIND_ERR_LOCAL_LIMIT_EXCEEDED"};
    DcerpcBinding binding;
    int max_recv;
    int max_xmit;

    public DcerpcBind() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DcerpcBind(DcerpcBinding dcerpcBinding, DcerpcHandle dcerpcHandle) {
        this.binding = dcerpcBinding;
        this.max_xmit = dcerpcHandle.max_xmit;
        this.max_recv = dcerpcHandle.max_recv;
        this.ptype = 11;
        this.flags = 3;
    }

    static String getResultMessage(int i) {
        return i < 4 ? result_message[i] : "0x" + Hexdump.toHexString(i, 4);
    }

    @Override // jcifs.dcerpc.DcerpcMessage
    public void decode_out(NdrBuffer ndrBuffer) {
        ndrBuffer.dec_ndr_short();
        ndrBuffer.dec_ndr_short();
        ndrBuffer.dec_ndr_long();
        ndrBuffer.advance(ndrBuffer.dec_ndr_short());
        ndrBuffer.align(4);
        ndrBuffer.dec_ndr_small();
        ndrBuffer.align(4);
        this.result = ndrBuffer.dec_ndr_short();
        ndrBuffer.dec_ndr_short();
        ndrBuffer.advance(20);
    }

    @Override // jcifs.dcerpc.DcerpcMessage
    public void encode_in(NdrBuffer ndrBuffer) {
        ndrBuffer.enc_ndr_short(this.max_xmit);
        ndrBuffer.enc_ndr_short(this.max_recv);
        ndrBuffer.enc_ndr_long(0);
        ndrBuffer.enc_ndr_small(1);
        ndrBuffer.enc_ndr_small(0);
        ndrBuffer.enc_ndr_short(0);
        ndrBuffer.enc_ndr_short(0);
        ndrBuffer.enc_ndr_small(1);
        ndrBuffer.enc_ndr_small(0);
        this.binding.uuid.encode(ndrBuffer);
        ndrBuffer.enc_ndr_short(this.binding.major);
        ndrBuffer.enc_ndr_short(this.binding.minor);
        DCERPC_UUID_SYNTAX_NDR.encode(ndrBuffer);
        ndrBuffer.enc_ndr_long(2);
    }

    @Override // jcifs.dcerpc.DcerpcMessage
    public int getOpnum() {
        return 0;
    }

    @Override // jcifs.dcerpc.DcerpcMessage
    public DcerpcException getResult() {
        if (this.result != 0) {
            return new DcerpcException(getResultMessage(this.result));
        }
        return null;
    }
}

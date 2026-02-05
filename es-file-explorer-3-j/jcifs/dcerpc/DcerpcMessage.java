package jcifs.dcerpc;

import jcifs.dcerpc.ndr.NdrBuffer;
import jcifs.dcerpc.ndr.NdrException;
import jcifs.dcerpc.ndr.NdrObject;

/* loaded from: classes.dex */
public abstract class DcerpcMessage extends NdrObject implements DcerpcConstants {
    protected int ptype = -1;
    protected int flags = 0;
    protected int length = 0;
    protected int call_id = 0;
    protected int alloc_hint = 0;
    protected int result = 0;

    @Override // jcifs.dcerpc.ndr.NdrObject
    public void decode(NdrBuffer ndrBuffer) {
        decode_header(ndrBuffer);
        if (this.ptype != 12 && this.ptype != 2 && this.ptype != 3 && this.ptype != 13) {
            throw new NdrException("Unexpected ptype: " + this.ptype);
        }
        if (this.ptype == 2 || this.ptype == 3) {
            this.alloc_hint = ndrBuffer.dec_ndr_long();
            ndrBuffer.dec_ndr_short();
            ndrBuffer.dec_ndr_short();
        }
        if (this.ptype == 3 || this.ptype == 13) {
            this.result = ndrBuffer.dec_ndr_long();
        } else {
            decode_out(ndrBuffer);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void decode_header(NdrBuffer ndrBuffer) {
        if (ndrBuffer.dec_ndr_small() != 5 || ndrBuffer.dec_ndr_small() != 0) {
            throw new NdrException("DCERPC version not supported");
        }
        this.ptype = ndrBuffer.dec_ndr_small();
        this.flags = ndrBuffer.dec_ndr_small();
        if (ndrBuffer.dec_ndr_long() != 16) {
            throw new NdrException("Data representation not supported");
        }
        this.length = ndrBuffer.dec_ndr_short();
        if (ndrBuffer.dec_ndr_short() != 0) {
            throw new NdrException("DCERPC authentication not supported");
        }
        this.call_id = ndrBuffer.dec_ndr_long();
    }

    public abstract void decode_out(NdrBuffer ndrBuffer);

    @Override // jcifs.dcerpc.ndr.NdrObject
    public void encode(NdrBuffer ndrBuffer) {
        int i;
        int index = ndrBuffer.getIndex();
        ndrBuffer.advance(16);
        if (this.ptype == 0) {
            i = ndrBuffer.getIndex();
            ndrBuffer.enc_ndr_long(0);
            ndrBuffer.enc_ndr_short(0);
            ndrBuffer.enc_ndr_short(getOpnum());
        } else {
            i = 0;
        }
        encode_in(ndrBuffer);
        this.length = ndrBuffer.getIndex() - index;
        if (this.ptype == 0) {
            ndrBuffer.setIndex(i);
            this.alloc_hint = this.length - i;
            ndrBuffer.enc_ndr_long(this.alloc_hint);
        }
        ndrBuffer.setIndex(index);
        encode_header(ndrBuffer);
        ndrBuffer.setIndex(this.length + index);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void encode_header(NdrBuffer ndrBuffer) {
        ndrBuffer.enc_ndr_small(5);
        ndrBuffer.enc_ndr_small(0);
        ndrBuffer.enc_ndr_small(this.ptype);
        ndrBuffer.enc_ndr_small(this.flags);
        ndrBuffer.enc_ndr_long(16);
        ndrBuffer.enc_ndr_short(this.length);
        ndrBuffer.enc_ndr_short(0);
        ndrBuffer.enc_ndr_long(this.call_id);
    }

    public abstract void encode_in(NdrBuffer ndrBuffer);

    public abstract int getOpnum();

    public DcerpcException getResult() {
        if (this.result != 0) {
            return new DcerpcException(this.result);
        }
        return null;
    }

    public boolean isFlagSet(int i) {
        return (this.flags & i) == i;
    }

    public void setFlag(int i) {
        this.flags |= i;
    }

    public void unsetFlag(int i) {
        this.flags &= i ^ (-1);
    }
}

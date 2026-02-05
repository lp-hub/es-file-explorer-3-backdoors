package jcifs.dcerpc.ndr;

/* loaded from: classes.dex */
public class NdrLong extends NdrObject {
    public int value;

    public NdrLong(int i) {
        this.value = i;
    }

    @Override // jcifs.dcerpc.ndr.NdrObject
    public void decode(NdrBuffer ndrBuffer) {
        this.value = ndrBuffer.dec_ndr_long();
    }

    @Override // jcifs.dcerpc.ndr.NdrObject
    public void encode(NdrBuffer ndrBuffer) {
        ndrBuffer.enc_ndr_long(this.value);
    }
}

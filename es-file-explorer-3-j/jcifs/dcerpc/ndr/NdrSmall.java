package jcifs.dcerpc.ndr;

/* loaded from: classes.dex */
public class NdrSmall extends NdrObject {
    public int value;

    public NdrSmall(int i) {
        this.value = i & 255;
    }

    @Override // jcifs.dcerpc.ndr.NdrObject
    public void decode(NdrBuffer ndrBuffer) {
        this.value = ndrBuffer.dec_ndr_small();
    }

    @Override // jcifs.dcerpc.ndr.NdrObject
    public void encode(NdrBuffer ndrBuffer) {
        ndrBuffer.enc_ndr_small(this.value);
    }
}

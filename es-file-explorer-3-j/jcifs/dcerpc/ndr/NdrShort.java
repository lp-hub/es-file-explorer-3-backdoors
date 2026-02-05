package jcifs.dcerpc.ndr;

/* loaded from: classes.dex */
public class NdrShort extends NdrObject {
    public int value;

    public NdrShort(int i) {
        this.value = i & 255;
    }

    @Override // jcifs.dcerpc.ndr.NdrObject
    public void decode(NdrBuffer ndrBuffer) {
        this.value = ndrBuffer.dec_ndr_short();
    }

    @Override // jcifs.dcerpc.ndr.NdrObject
    public void encode(NdrBuffer ndrBuffer) {
        ndrBuffer.enc_ndr_short(this.value);
    }
}

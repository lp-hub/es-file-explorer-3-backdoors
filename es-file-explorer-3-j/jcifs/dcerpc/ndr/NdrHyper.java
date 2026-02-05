package jcifs.dcerpc.ndr;

/* loaded from: classes.dex */
public class NdrHyper extends NdrObject {
    public long value;

    public NdrHyper(long j) {
        this.value = j;
    }

    @Override // jcifs.dcerpc.ndr.NdrObject
    public void decode(NdrBuffer ndrBuffer) {
        this.value = ndrBuffer.dec_ndr_hyper();
    }

    @Override // jcifs.dcerpc.ndr.NdrObject
    public void encode(NdrBuffer ndrBuffer) {
        ndrBuffer.enc_ndr_hyper(this.value);
    }
}

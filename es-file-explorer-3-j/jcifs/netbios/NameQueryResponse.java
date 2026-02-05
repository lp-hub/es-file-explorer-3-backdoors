package jcifs.netbios;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class NameQueryResponse extends NameServicePacket {
    /* JADX INFO: Access modifiers changed from: package-private */
    public NameQueryResponse() {
        this.recordName = new Name();
    }

    @Override // jcifs.netbios.NameServicePacket
    int readBodyWireFormat(byte[] bArr, int i) {
        return readResourceRecordWireFormat(bArr, i);
    }

    @Override // jcifs.netbios.NameServicePacket
    int readRDataWireFormat(byte[] bArr, int i) {
        if (this.resultCode != 0 || this.opCode != 0) {
            return 0;
        }
        boolean z = (bArr[i] & 128) == 128;
        int i2 = (bArr[i] & 96) >> 5;
        int readInt4 = readInt4(bArr, i + 2);
        if (readInt4 != 0) {
            this.addrEntry[this.addrIndex] = new NbtAddress(this.recordName, readInt4, z, i2);
        } else {
            this.addrEntry[this.addrIndex] = null;
        }
        return 6;
    }

    @Override // jcifs.netbios.NameServicePacket
    public String toString() {
        return new String("NameQueryResponse[" + super.toString() + ",addrEntry=" + this.addrEntry + "]");
    }

    @Override // jcifs.netbios.NameServicePacket
    int writeBodyWireFormat(byte[] bArr, int i) {
        return 0;
    }

    @Override // jcifs.netbios.NameServicePacket
    int writeRDataWireFormat(byte[] bArr, int i) {
        return 0;
    }
}

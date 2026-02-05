package jcifs.netbios;

import java.io.UnsupportedEncodingException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class NodeStatusResponse extends NameServicePacket {
    NbtAddress[] addressArray;
    private byte[] macAddress;
    private int numberOfNames;
    private NbtAddress queryAddress;
    private byte[] stats;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NodeStatusResponse(NbtAddress nbtAddress) {
        this.queryAddress = nbtAddress;
        this.recordName = new Name();
        this.macAddress = new byte[6];
    }

    private int readNodeNameArray(byte[] bArr, int i) {
        boolean z;
        this.addressArray = new NbtAddress[this.numberOfNames];
        String str = this.queryAddress.hostName.scope;
        boolean z2 = false;
        int i2 = 0;
        int i3 = i;
        while (i2 < this.numberOfNames) {
            try {
                int i4 = i3 + 14;
                while (bArr[i4] == 32) {
                    i4--;
                }
                String str2 = new String(bArr, i3, (i4 - i3) + 1, Name.OEM_ENCODING);
                int i5 = bArr[i3 + 15] & 255;
                boolean z3 = (bArr[i3 + 16] & 128) == 128;
                int i6 = (bArr[i3 + 16] & 96) >> 5;
                boolean z4 = (bArr[i3 + 16] & 16) == 16;
                boolean z5 = (bArr[i3 + 16] & 8) == 8;
                boolean z6 = (bArr[i3 + 16] & 4) == 4;
                boolean z7 = (bArr[i3 + 16] & 2) == 2;
                if (!z2 && this.queryAddress.hostName.hexCode == i5 && (this.queryAddress.hostName == NbtAddress.UNKNOWN_NAME || this.queryAddress.hostName.name.equals(str2))) {
                    if (this.queryAddress.hostName == NbtAddress.UNKNOWN_NAME) {
                        this.queryAddress.hostName = new Name(str2, i5, str);
                    }
                    this.queryAddress.groupName = z3;
                    this.queryAddress.nodeType = i6;
                    this.queryAddress.isBeingDeleted = z4;
                    this.queryAddress.isInConflict = z5;
                    this.queryAddress.isActive = z6;
                    this.queryAddress.isPermanent = z7;
                    this.queryAddress.macAddress = this.macAddress;
                    this.queryAddress.isDataFromNodeStatus = true;
                    z = true;
                    this.addressArray[i2] = this.queryAddress;
                } else {
                    this.addressArray[i2] = new NbtAddress(new Name(str2, i5, str), this.queryAddress.address, z3, i6, z4, z5, z6, z7, this.macAddress);
                    z = z2;
                }
                i2++;
                z2 = z;
                i3 += 18;
            } catch (UnsupportedEncodingException e) {
            }
        }
        return i3 - i;
    }

    @Override // jcifs.netbios.NameServicePacket
    int readBodyWireFormat(byte[] bArr, int i) {
        return readResourceRecordWireFormat(bArr, i);
    }

    @Override // jcifs.netbios.NameServicePacket
    int readRDataWireFormat(byte[] bArr, int i) {
        this.numberOfNames = bArr[i] & 255;
        int i2 = this.numberOfNames * 18;
        int i3 = (this.rDataLength - i2) - 1;
        int i4 = i + 1;
        this.numberOfNames = bArr[i] & 255;
        System.arraycopy(bArr, i2 + i4, this.macAddress, 0, 6);
        int readNodeNameArray = readNodeNameArray(bArr, i4) + i4;
        this.stats = new byte[i3];
        System.arraycopy(bArr, readNodeNameArray, this.stats, 0, i3);
        return (readNodeNameArray + i3) - i;
    }

    @Override // jcifs.netbios.NameServicePacket
    public String toString() {
        return new String("NodeStatusResponse[" + super.toString() + "]");
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

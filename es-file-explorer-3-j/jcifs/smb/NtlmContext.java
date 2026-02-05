package jcifs.smb;

import java.io.UnsupportedEncodingException;
import jcifs.ntlmssp.Type1Message;
import jcifs.ntlmssp.Type2Message;
import jcifs.ntlmssp.Type3Message;
import jcifs.util.Encdec;
import jcifs.util.Hexdump;
import jcifs.util.LogStream;

/* loaded from: classes.dex */
public class NtlmContext {
    NtlmPasswordAuthentication auth;
    LogStream log;
    String workstation;
    boolean isEstablished = false;
    byte[] serverChallenge = null;
    byte[] signingKey = null;
    String netbiosName = null;
    int state = 1;
    int ntlmsspFlags = ((this.ntlmsspFlags | 4) | 524288) | 536870912;
    int ntlmsspFlags = ((this.ntlmsspFlags | 4) | 524288) | 536870912;

    public NtlmContext(NtlmPasswordAuthentication ntlmPasswordAuthentication, boolean z) {
        this.auth = ntlmPasswordAuthentication;
        if (z) {
            this.ntlmsspFlags |= 1073774608;
        }
        this.workstation = Type1Message.getDefaultWorkstation();
        this.log = LogStream.getInstance();
    }

    private String getNtlmsspListItem(byte[] bArr, int i) {
        int i2 = 58;
        while (true) {
            short dec_uint16le = Encdec.dec_uint16le(bArr, i2);
            short dec_uint16le2 = Encdec.dec_uint16le(bArr, i2 + 2);
            int i3 = i2 + 4;
            if (dec_uint16le == 0 || i3 + dec_uint16le2 > bArr.length) {
                break;
            }
            if (dec_uint16le == i) {
                try {
                    return new String(bArr, i3, dec_uint16le2, SmbConstants.UNI_ENCODING);
                } catch (UnsupportedEncodingException e) {
                }
            } else {
                i2 = i3 + dec_uint16le2;
            }
        }
        return null;
    }

    public String getNetbiosName() {
        return this.netbiosName;
    }

    public byte[] getServerChallenge() {
        return this.serverChallenge;
    }

    public byte[] getSigningKey() {
        return this.signingKey;
    }

    public byte[] initSecContext(byte[] bArr, int i, int i2) {
        switch (this.state) {
            case 1:
                Type1Message type1Message = new Type1Message(this.ntlmsspFlags, this.auth.getDomain(), this.workstation);
                byte[] byteArray = type1Message.toByteArray();
                LogStream logStream = this.log;
                if (LogStream.level >= 4) {
                    this.log.println(type1Message);
                    LogStream logStream2 = this.log;
                    if (LogStream.level >= 6) {
                        Hexdump.hexdump(this.log, byteArray, 0, byteArray.length);
                    }
                }
                this.state++;
                return byteArray;
            case 2:
                try {
                    Type2Message type2Message = new Type2Message(bArr);
                    LogStream logStream3 = this.log;
                    if (LogStream.level >= 4) {
                        this.log.println(type2Message);
                        LogStream logStream4 = this.log;
                        if (LogStream.level >= 6) {
                            Hexdump.hexdump(this.log, bArr, 0, bArr.length);
                        }
                    }
                    this.serverChallenge = type2Message.getChallenge();
                    this.ntlmsspFlags &= type2Message.getFlags();
                    Type3Message type3Message = new Type3Message(type2Message, this.auth.getPassword(), this.auth.getDomain(), this.auth.getUsername(), this.workstation, this.ntlmsspFlags);
                    byte[] byteArray2 = type3Message.toByteArray();
                    LogStream logStream5 = this.log;
                    if (LogStream.level >= 4) {
                        this.log.println(type3Message);
                        LogStream logStream6 = this.log;
                        if (LogStream.level >= 6) {
                            Hexdump.hexdump(this.log, byteArray2, 0, byteArray2.length);
                        }
                    }
                    if ((this.ntlmsspFlags & 16) != 0) {
                        this.signingKey = type3Message.getMasterKey();
                    }
                    this.isEstablished = true;
                    this.state++;
                    return byteArray2;
                } catch (Exception e) {
                    throw new SmbException(e.getMessage(), e);
                }
            default:
                throw new SmbException("Invalid state");
        }
    }

    public boolean isEstablished() {
        return this.isEstablished;
    }

    public String toString() {
        String str = "NtlmContext[auth=" + this.auth + ",ntlmsspFlags=0x" + Hexdump.toHexString(this.ntlmsspFlags, 8) + ",workstation=" + this.workstation + ",isEstablished=" + this.isEstablished + ",state=" + this.state + ",serverChallenge=";
        String str2 = (this.serverChallenge == null ? str + "null" : str + Hexdump.toHexString(this.serverChallenge, 0, this.serverChallenge.length * 2)) + ",signingKey=";
        return (this.signingKey == null ? str2 + "null" : str2 + Hexdump.toHexString(this.signingKey, 0, this.signingKey.length * 2)) + "]";
    }
}

package jcifs.smb;

import jcifs.util.LogStream;
import org.apache.commons.net.ftp.FTPCommand;
import org.apache.commons.net.ftp.FTPReply;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SmbTree {
    private static int tree_conn_counter;
    int connectionState;
    boolean inDfs;
    boolean inDomainDfs;
    String service;
    String service0;
    SmbSession session;
    String share;
    int tid;
    int tree_num;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SmbTree(SmbSession smbSession, String str, String str2) {
        this.service = "?????";
        this.session = smbSession;
        this.share = str.toUpperCase();
        if (str2 != null && !str2.startsWith("??")) {
            this.service = str2;
        }
        this.service0 = this.service;
        this.connectionState = 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SmbTree)) {
            return false;
        }
        SmbTree smbTree = (SmbTree) obj;
        return matches(smbTree.share, smbTree.service);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean matches(String str, String str2) {
        return this.share.equalsIgnoreCase(str) && (str2 == null || str2.startsWith("??") || this.service.equalsIgnoreCase(str2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x0058. Please report as an issue. */
    public void send(ServerMessageBlock serverMessageBlock, ServerMessageBlock serverMessageBlock2) {
        synchronized (this.session.transport()) {
            if (serverMessageBlock2 != null) {
                serverMessageBlock2.received = false;
            }
            treeConnect(serverMessageBlock, serverMessageBlock2);
            if (serverMessageBlock == null || (serverMessageBlock2 != null && serverMessageBlock2.received)) {
                return;
            }
            if (!this.service.equals("A:")) {
                switch (serverMessageBlock.command) {
                    case -94:
                    case 4:
                    case 45:
                    case 46:
                    case 47:
                    case 113:
                        break;
                    case FTPCommand.EPRT /* 37 */:
                    case 50:
                        switch (((SmbComTransaction) serverMessageBlock).subCommand & 255) {
                            case 0:
                            case 16:
                            case 35:
                            case FTPCommand.MLSD /* 38 */:
                            case 83:
                            case 84:
                            case 104:
                            case FTPReply.NAME_SYSTEM_TYPE /* 215 */:
                                break;
                            default:
                                throw new SmbException("Invalid operation for " + this.service + " service");
                        }
                    default:
                        throw new SmbException("Invalid operation for " + this.service + " service" + serverMessageBlock);
                }
            }
            serverMessageBlock.tid = this.tid;
            if (this.inDfs && !this.service.equals("IPC") && serverMessageBlock.path != null && serverMessageBlock.path.length() > 0) {
                serverMessageBlock.flags2 = 4096;
                serverMessageBlock.path = '\\' + this.session.transport().tconHostName + '\\' + this.share + serverMessageBlock.path;
            }
            try {
                this.session.send(serverMessageBlock, serverMessageBlock2);
            } catch (SmbException e) {
                if (e.getNtStatus() == -1073741623) {
                    treeDisconnect(true);
                }
                throw e;
            }
        }
    }

    public String toString() {
        return "SmbTree[share=" + this.share + ",service=" + this.service + ",tid=" + this.tid + ",inDfs=" + this.inDfs + ",inDomainDfs=" + this.inDomainDfs + ",connectionState=" + this.connectionState + "]";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void treeConnect(ServerMessageBlock serverMessageBlock, ServerMessageBlock serverMessageBlock2) {
        synchronized (this.session.transport()) {
            while (this.connectionState != 0) {
                if (this.connectionState == 2 || this.connectionState == 3) {
                    return;
                }
                try {
                    this.session.transport.wait();
                } catch (InterruptedException e) {
                    throw new SmbException(e.getMessage(), e);
                }
            }
            this.connectionState = 1;
            try {
                this.session.transport.connect();
                String str = "\\\\" + this.session.transport.tconHostName + '\\' + this.share;
                this.service = this.service0;
                SmbTransport smbTransport = this.session.transport;
                LogStream logStream = SmbTransport.log;
                if (LogStream.level >= 4) {
                    SmbTransport smbTransport2 = this.session.transport;
                    SmbTransport.log.println("treeConnect: unc=" + str + ",service=" + this.service);
                }
                SmbComTreeConnectAndXResponse smbComTreeConnectAndXResponse = new SmbComTreeConnectAndXResponse(serverMessageBlock2);
                this.session.send(new SmbComTreeConnectAndX(this.session, str, this.service, serverMessageBlock), smbComTreeConnectAndXResponse);
                this.tid = smbComTreeConnectAndXResponse.tid;
                this.service = smbComTreeConnectAndXResponse.service;
                this.inDfs = smbComTreeConnectAndXResponse.shareIsInDfs;
                int i = tree_conn_counter;
                tree_conn_counter = i + 1;
                this.tree_num = i;
                this.connectionState = 2;
            } catch (SmbException e2) {
                treeDisconnect(true);
                this.connectionState = 0;
                throw e2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void treeDisconnect(boolean z) {
        synchronized (this.session.transport()) {
            if (this.connectionState != 2) {
                return;
            }
            this.connectionState = 3;
            if (!z && this.tid != 0) {
                try {
                    send(new SmbComTreeDisconnect(), null);
                } catch (SmbException e) {
                    SmbTransport smbTransport = this.session.transport;
                    LogStream logStream = SmbTransport.log;
                    if (LogStream.level > 1) {
                        SmbTransport smbTransport2 = this.session.transport;
                        e.printStackTrace(SmbTransport.log);
                    }
                }
            }
            this.inDfs = false;
            this.inDomainDfs = false;
            this.connectionState = 0;
            this.session.transport.notifyAll();
        }
    }
}

package com.estrongs.android.pop;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.estrongs.android.pop.netfs.NetFsException;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.aq;
import com.estrongs.android.ui.view.CreateOAuthNetDisk;
import com.estrongs.android.ui.view.z;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.FsProviderNotFoundException;
import java.io.ByteArrayOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintStream;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.text.MessageFormat;
import jcifs.smb.SmbAuthException;
import jcifs.smb.SmbException;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    Activity f1113a;

    /* renamed from: b, reason: collision with root package name */
    com.estrongs.android.a.d f1114b;
    ConnectivityManager c = null;

    public d(Activity activity, com.estrongs.android.a.d dVar) {
        this.f1113a = null;
        this.f1113a = activity;
        this.f1114b = dVar;
    }

    private void a(String str, boolean z) {
        aq b2 = new aq(this.f1113a).a(C0000R.string.message_login_fail).b(this.f1113a.getString(C0000R.string.net_failed_cause) + "\n" + str);
        if (z) {
            b2.b(C0000R.string.btn_report_exception, new f(this, str));
            b2.c(C0000R.string.confirm_cancel, (DialogInterface.OnClickListener) null);
        } else {
            b2.a(C0000R.string.confirm_cancel, (DialogInterface.OnClickListener) null);
        }
        b2.a().show();
    }

    private boolean a() {
        if (this.c == null) {
            this.c = (ConnectivityManager) this.f1113a.getSystemService("connectivity");
        }
        if (this.c == null) {
            return false;
        }
        NetworkInfo activeNetworkInfo = this.c.getActiveNetworkInfo();
        return activeNetworkInfo == null ? false : activeNetworkInfo.isConnected();
    }

    protected void a(String str) {
        com.estrongs.android.a.a aVar = new com.estrongs.android.a.a(this.f1113a, str);
        aVar.a(this.f1114b);
        aVar.show();
    }

    public boolean a(String str, Throwable th) {
        Throwable th2;
        if (th instanceof FsProviderNotFoundException) {
            com.estrongs.android.pop.a.a.a(this.f1113a, ak.bi(str), ((FsProviderNotFoundException) th).getFlagInstallOrUpdate(), new e(this, str));
            return false;
        }
        String message = th.getMessage();
        String str2 = message == null ? "" : message;
        if (str2.contains("baidu-up-to-pcs")) {
            if (FileExplorerActivity.E() != null) {
                FileExplorerActivity.E().O();
            }
            return true;
        }
        if (th instanceof FileSystemException) {
            FileSystemException fileSystemException = (FileSystemException) th;
            if (fileSystemException.getCause() != null) {
            }
            th2 = com.estrongs.android.exception.a.a(fileSystemException);
        } else {
            th2 = th;
        }
        String string = this.f1113a.getString(C0000R.string.net_msg_wifi_off);
        if (th2 instanceof IllegalArgumentException) {
            if (String.valueOf(FTPReply.NOT_LOGGED_IN).equals(str2)) {
                if (q.a(this.f1113a).b(str)) {
                    a(str);
                    return true;
                }
                str2 = MessageFormat.format(this.f1113a.getString(C0000R.string.server_not_exist), ak.a(str));
            }
        } else {
            if (th2 instanceof NetFsException) {
                if (((NetFsException) th2).error == NetFsException.ERROR_CODE.NETFS_ERROR_AUTH_FAILED) {
                    String Y = ak.Y(str);
                    String ae = ak.ae(str);
                    if (Y.equals("/") && ("dropbox".equals(ae) || "box".equals(ae))) {
                        Intent intent = new Intent(this.f1113a, (Class<?>) CreateOAuthNetDisk.class);
                        intent.putExtra("nettype", ae);
                        intent.putExtra("editServer", true);
                        intent.putExtra("originalPath", str);
                        this.f1113a.startActivity(intent);
                        z.a(this.f1113a, this.f1113a.getString(C0000R.string.authorization_expired), 1).show();
                        return true;
                    }
                }
                if ((str2.contains("UnknownHostException") || str2.contains("timed out") || str2.contains("ConnectException")) && !a()) {
                    z.a(this.f1113a, this.f1113a.getString(C0000R.string.network_not_exist), 1).show();
                } else if (str2.contains("Error: oauth_problem=timestamp_refused")) {
                    z.a(this.f1113a, this.f1113a.getString(C0000R.string.timestamp_error), 1).show();
                } else {
                    z.a(this.f1113a, ak.bv(str) + "\n" + this.f1113a.getString(C0000R.string.operation_getlist_fail), 1).show();
                }
                return true;
            }
            if (th2 instanceof IOException) {
                if (str2.contains("Invalid operation")) {
                    str2 = "Invalid operation";
                } else if (String.valueOf(FTPReply.FILE_UNAVAILABLE).equals(str2)) {
                    str2 = this.f1113a.getString(C0000R.string.net_msg_permission_denied);
                } else if (th2 instanceof SmbAuthException) {
                    if (str2.indexOf("Logon failure") >= 0) {
                        if (q.a(this.f1113a).b(str)) {
                            a(str);
                            return true;
                        }
                        str2 = MessageFormat.format(this.f1113a.getString(C0000R.string.server_not_exist), ak.a(str));
                    } else if (str2.indexOf("Access is denied") >= 0) {
                        str2 = this.f1113a.getString(C0000R.string.net_msg_permission_denied);
                    }
                } else if (th2 instanceof SmbException) {
                    str2 = string + "\n" + this.f1113a.getString(C0000R.string.net_msg_smb_diff_ip_scope) + "\n" + this.f1113a.getString(C0000R.string.net_msg_invalid_ip) + "\n" + this.f1113a.getString(C0000R.string.net_msg_firewall_on) + "\n" + this.f1113a.getString(C0000R.string.net_msg_smb_share_off);
                } else if ((th2 instanceof ConnectException) || (th2 instanceof SocketException) || (th2 instanceof SocketTimeoutException)) {
                    str2 = string + "\n" + this.f1113a.getString(C0000R.string.net_msg_invalid_ip) + "\n" + this.f1113a.getString(C0000R.string.net_msg_firewall_on) + "\n" + this.f1113a.getString(C0000R.string.net_msg_ftp_off);
                } else if (th2 instanceof FileNotFoundException) {
                    z.a(this.f1113a, String.format(this.f1113a.getString(C0000R.string.object_not_found_msg), ak.bv(str)), 1).show();
                    return false;
                }
            } else if (aw.a((CharSequence) str2)) {
                String str3 = str2 + "\n" + string + "\n" + this.f1113a.getString(C0000R.string.net_msg_invalid_ip) + "\n" + this.f1113a.getString(C0000R.string.net_msg_firewall_on) + "\n" + this.f1113a.getString(C0000R.string.net_msg_ftp_off) + "\n------------------------------\n";
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                PrintStream printStream = new PrintStream(byteArrayOutputStream);
                th2.printStackTrace(printStream);
                str2 = str3 + "\n" + byteArrayOutputStream.toString();
                printStream.close();
            }
        }
        try {
            a(str2, false);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return true;
    }
}

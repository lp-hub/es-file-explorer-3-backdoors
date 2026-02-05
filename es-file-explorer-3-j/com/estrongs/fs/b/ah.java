package com.estrongs.fs.b;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;

/* loaded from: classes.dex */
public class ah extends com.estrongs.a.a {

    /* renamed from: b, reason: collision with root package name */
    private String f2973b;
    private String c;
    private Socket d;
    private long e;
    private Activity f;
    private as g;
    private boolean i;
    private com.estrongs.a.a.e h = new com.estrongs.a.a.e();
    private boolean j = false;

    /* renamed from: a, reason: collision with root package name */
    Long f2972a = 0L;

    private ah(Activity activity, as asVar, boolean z) {
        this.i = false;
        this.f = activity;
        this.c = asVar.i;
        this.f2973b = asVar.h;
        this.d = asVar.j;
        this.e = asVar.e;
        this.g = asVar;
        this.canRestart = false;
        this.canPause = false;
        this.task_type = 6;
        this.i = z;
        e();
        setDescription(this.f2973b + " " + this.f.getString(C0000R.string.progress_receiving));
    }

    public static ah a(Activity activity, Object obj, boolean z) {
        as asVar = (as) obj;
        if (FileExplorerActivity.E() == null) {
            try {
                asVar.j.close();
            } catch (Exception e) {
            }
            return null;
        }
        ah ahVar = new ah(FileExplorerActivity.E(), asVar, z);
        if (!z) {
            ahVar.execute();
            return ahVar;
        }
        ar a2 = ahVar.a(activity);
        a2.a(false);
        a2.show();
        ahVar.execute();
        return ahVar;
    }

    private void e() {
        recordSummary("task_type", Integer.valueOf(this.task_type));
        recordSummary("restartable", false);
        recordSummary("title", this.f2973b);
        recordSummary("items_selected_count", Integer.valueOf(this.g.c));
        recordSummary("source", this.g.g);
        recordSummary("target", a());
        recordSummary("size", Long.valueOf(this.e));
    }

    ar a(Activity activity) {
        return new ar(this, activity, activity.getString(C0000R.string.progress_receiving), this);
    }

    public String a() {
        return this.c;
    }

    public boolean b() {
        return this.g.c == 1 && this.g.f2985b != 2;
    }

    public String c() {
        return this.c + this.f2973b;
    }

    public void d() {
        this.f.runOnUiThread(new ao(this));
    }

    @Override // com.estrongs.a.a
    public void handleMessage(int i, Object... objArr) {
        switch (i) {
            case 2:
                this.processData.f = ((Long) objArr[0]).longValue();
                this.processData.f196a = (String) objArr[1];
                this.processData.e = ((Long) objArr[2]).longValue();
                if (hasProgressListener()) {
                    Long valueOf = Long.valueOf(System.currentTimeMillis());
                    this.processData.f197b = (int) (((float) this.processData.f) / ((valueOf.longValue() - this.f2972a.longValue()) / 1000.0d));
                    onProgress(this.processData);
                    return;
                }
                return;
            case 9:
                this.processData.g = ((Long) objArr[0]).longValue();
                this.processData.h = ((Long) objArr[1]).longValue();
                return;
            default:
                super.handleMessage(i, objArr);
                return;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.estrongs.a.a
    public boolean task() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        this.processData.f196a = "Waiting for recving " + this.f2973b;
        onProgress(this.processData);
        this.processData.e = this.g.e;
        this.processData.j = this.g.h;
        if (this.g.c > 1) {
            StringBuilder sb = new StringBuilder();
            com.estrongs.a.a.i iVar = this.processData;
            iVar.j = sb.append(iVar.j).append("...").toString();
        }
        this.processData.c = this.g.d;
        this.processData.d = 0L;
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        try {
            this.d.setSoTimeout(1000000);
            DataInputStream dataInputStream = new DataInputStream(this.d.getInputStream());
            this.f2972a = Long.valueOf(System.currentTimeMillis());
            long j = 0;
            boolean z5 = false;
            boolean z6 = false;
            boolean z7 = false;
            while (true) {
                if (currentTask != null && currentTask.taskStopped()) {
                    z = 2;
                    break;
                }
                if (!this.i || this.j) {
                    try {
                        String a2 = com.estrongs.a.b.d.a((InputStream) dataInputStream);
                        if (a2.equals("OVER")) {
                            z = z5;
                            break;
                        }
                        String a3 = com.estrongs.a.b.d.a((InputStream) dataInputStream);
                        File file = new File(this.c + a2);
                        if (a3.equals("folder")) {
                            if (a2.indexOf(47) == -1) {
                                com.estrongs.fs.a.b.a().a(this.c + a2);
                            }
                            file.mkdir();
                        } else {
                            String a4 = com.estrongs.a.b.d.a((InputStream) dataInputStream);
                            synchronized (this.h) {
                                if (!z6) {
                                    if (file.exists()) {
                                        this.h.f191a = this.c + a2;
                                        d();
                                        this.h.wait();
                                        boolean z8 = this.h.f;
                                        z2 = this.h.g == 2;
                                        z3 = z8;
                                    }
                                }
                                z2 = z7;
                                z3 = z6;
                            }
                            byte[] bArr = new byte[16384];
                            FileOutputStream fileOutputStream = null;
                            long parseLong = Long.parseLong(a4);
                            long j2 = 0;
                            while (true) {
                                if (currentTask != null && currentTask.taskStopped()) {
                                    z4 = 2;
                                    break;
                                }
                                if (!z2 && fileOutputStream == null) {
                                    try {
                                        fileOutputStream = new FileOutputStream(this.c + a2);
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        z4 = z5;
                                    }
                                }
                                if (j2 >= parseLong) {
                                    com.estrongs.a.b.d.a((InputStream) dataInputStream);
                                    z4 = z5;
                                    break;
                                }
                                int read = ((long) bArr.length) + j2 > parseLong ? dataInputStream.read(bArr, 0, (int) (parseLong - j2)) : dataInputStream.read(bArr);
                                if (read <= 0) {
                                    z4 = z5;
                                    break;
                                }
                                if (!z2) {
                                    fileOutputStream.write(bArr, 0, read);
                                }
                                j2 += read;
                                j += read;
                                currentTask.sendMessage(9, Long.valueOf(parseLong), Long.valueOf(j2));
                                currentTask.sendMessage(2, Long.valueOf(j), this.c + a2, Long.valueOf(this.e));
                            }
                            try {
                                fileOutputStream.close();
                            } catch (Exception e2) {
                            }
                            this.processData.d++;
                            if (z4) {
                                new File(this.c + a2).delete();
                                z = z4;
                                break;
                            }
                            if (parseLong != j2) {
                                new File(this.c + a2).delete();
                                z = 1;
                                break;
                            }
                            com.estrongs.fs.impl.local.d.j(this.c + a2);
                            if (a2.indexOf(47) == -1) {
                                com.estrongs.fs.a.b.a().a(this.c + a2);
                            }
                            z6 = z3;
                            z5 = z4;
                            z7 = z2;
                        }
                    } catch (Exception e3) {
                        z = 1;
                    }
                } else {
                    try {
                        Thread.sleep(200L);
                    } catch (InterruptedException e4) {
                    }
                }
            }
            if (z == 0) {
                if (this.g.k) {
                    AppRunner.a(this.f, (String) null, this.c + this.f2973b);
                }
                if (FileExplorerActivity.E().L()) {
                    String string = FexApplication.a().getString(C0000R.string.action_receive);
                    String c = ((ah) currentTask).b() ? ((ah) currentTask).c() : ((ah) currentTask).a();
                    String string2 = FexApplication.a().getString(C0000R.string.receive_sucessfully_message, new Object[]{c});
                    Intent intent = new Intent(FexApplication.a(), (Class<?>) ShowDialogActivity.class);
                    intent.setFlags(268435456);
                    intent.setData(Uri.parse(c));
                    intent.putExtra("title", string);
                    intent.putExtra("message", string2);
                    intent.putExtra("openfileOrFolder", true);
                    FexApplication.a().startActivity(intent);
                } else {
                    this.f.runOnUiThread(new ai(this));
                }
            } else if (z == 1) {
                setTaskResult(10000, new com.estrongs.a.q(this.f.getString(C0000R.string.sender_disconnected), (Exception) null));
            } else if (z == 2) {
                setTaskResult(10000, new com.estrongs.a.q(this.f.getString(C0000R.string.recving_canceled), (Exception) null));
            }
            try {
                this.d.close();
            } catch (IOException e5) {
            }
            return z == 0;
        } catch (IOException e6) {
            setTaskResult(10000, new com.estrongs.a.q("Sender disconnected.", (Exception) e6));
            return false;
        }
    }
}

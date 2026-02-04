.class public Lcom/estrongs/android/pop/d;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/app/Activity;

.field b:Lcom/estrongs/android/a/d;

.field c:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/android/a/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    iput-object v0, p0, Lcom/estrongs/android/pop/d;->c:Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/d;->b:Lcom/estrongs/android/a/d;

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0b0007

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0045

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    const v3, 0x7f0b0223

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    if-eqz p2, :cond_0

    const v1, 0x7f0b02a4

    new-instance v2, Lcom/estrongs/android/pop/f;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/pop/f;-><init>(Lcom/estrongs/android/pop/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    :goto_0
    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    return-void

    :cond_0
    invoke-virtual {v0, v4, v5}, Lcom/estrongs/android/ui/b/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    goto :goto_0
.end method

.method private a()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/d;->c:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/estrongs/android/pop/d;->c:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/d;->c:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/d;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/a/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/estrongs/android/a/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/d;->b:Lcom/estrongs/android/a/d;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/a/a;->a(Lcom/estrongs/android/a/d;)V

    invoke-virtual {v0}, Lcom/estrongs/android/a/a;->show()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 9

    const v8, 0x7f0b0227

    const v7, 0x7f0b0226

    const v6, 0x7f0b0224

    const/4 v2, 0x0

    const/4 v3, 0x1

    instance-of v0, p2, Lcom/estrongs/fs/FsProviderNotFoundException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lcom/estrongs/fs/FsProviderNotFoundException;

    invoke-virtual {p2}, Lcom/estrongs/fs/FsProviderNotFoundException;->getFlagInstallOrUpdate()I

    move-result v3

    new-instance v4, Lcom/estrongs/android/pop/e;

    invoke-direct {v4, p0, p1}, Lcom/estrongs/android/pop/e;-><init>(Lcom/estrongs/android/pop/d;Ljava/lang/String;)V

    invoke-static {v0, v1, v3, v4}, Lcom/estrongs/android/pop/a/a;->a(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/Runnable;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, ""

    move-object v1, v0

    :goto_1
    const-string v0, "baidu-up-to-pcs"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()V

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    instance-of v0, p2, Lcom/estrongs/fs/FileSystemException;

    if-eqz v0, :cond_17

    check-cast p2, Lcom/estrongs/fs/FileSystemException;

    invoke-virtual {p2}, Lcom/estrongs/fs/FileSystemException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_3
    invoke-static {p2}, Lcom/estrongs/android/exception/a;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    :goto_2
    iget-object v4, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    const v5, 0x7f0b0225

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    instance-of v5, v0, Ljava/lang/IllegalArgumentException;

    if-eqz v5, :cond_6

    const/16 v0, 0x212

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/q;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/d;->a(Ljava/lang/String;)V

    move v0, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    const v1, 0x7f0b0230

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    :goto_3
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/estrongs/android/pop/d;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move v0, v3

    goto :goto_0

    :cond_6
    instance-of v5, v0, Lcom/estrongs/android/pop/netfs/NetFsException;

    if-eqz v5, :cond_d

    check-cast v0, Lcom/estrongs/android/pop/netfs/NetFsException;

    iget-object v0, v0, Lcom/estrongs/android/pop/netfs/NetFsException;->error:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    sget-object v4, Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;->NETFS_ERROR_AUTH_FAILED:Lcom/estrongs/android/pop/netfs/NetFsException$ERROR_CODE;

    if-ne v0, v4, :cond_8

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->Y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->ae(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "dropbox"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "box"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    const-class v2, Lcom/estrongs/android/ui/view/CreateOAuthNetDisk;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "nettype"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "editServer"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "originalPath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    const v2, 0x7f0b0410

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v3

    goto/16 :goto_0

    :cond_8
    const-string v0, "UnknownHostException"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "timed out"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "ConnectException"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    move v2, v3

    :cond_a
    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/estrongs/android/pop/d;->a()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    const v2, 0x7f0b0247

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_5
    move v0, v3

    goto/16 :goto_0

    :cond_b
    const-string v0, "Error: oauth_problem=timestamp_refused"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    const v2, 0x7f0b0391

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    const v4, 0x7f0b01b2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_5

    :cond_d
    instance-of v5, v0, Ljava/io/IOException;

    if-eqz v5, :cond_16

    const-string v5, "Invalid operation"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string v1, "Invalid operation"

    goto/16 :goto_3

    :cond_e
    const/16 v5, 0x226

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_f
    instance-of v5, v0, Ljcifs/smb/SmbAuthException;

    if-eqz v5, :cond_12

    const-string v0, "Logon failure"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/q;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/d;->a(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    const v1, 0x7f0b0230

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_11
    const-string v0, "Access is denied"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    invoke-virtual {v0, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_12
    instance-of v5, v0, Ljcifs/smb/SmbException;

    if-eqz v5, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    const v4, 0x7f0b022a

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    const v4, 0x7f0b0229

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_13
    instance-of v5, v0, Ljava/net/ConnectException;

    if-nez v5, :cond_14

    instance-of v5, v0, Ljava/net/SocketException;

    if-nez v5, :cond_14

    instance-of v5, v0, Ljava/net/SocketTimeoutException;

    if-eqz v5, :cond_15

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    const v4, 0x7f0b0228

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_15
    instance-of v0, v0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    const v4, 0x7f0b02f2

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v2

    goto/16 :goto_0

    :cond_16
    invoke-static {v1}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    invoke-virtual {v4, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    invoke-virtual {v4, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/estrongs/android/pop/d;->a:Landroid/app/Activity;

    const v5, 0x7f0b0228

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n------------------------------"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Ljava/io/PrintStream;

    invoke-direct {v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/PrintStream;->close()V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_17
    move-object v0, p2

    goto/16 :goto_2

    :cond_18
    move-object v1, v0

    goto/16 :goto_1
.end method

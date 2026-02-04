.class public Lcom/estrongs/android/pop/app/DownloaderActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Lcom/estrongs/android/ui/b/ag;
    .locals 3

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->C()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, p1, v1, v2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/a/k;Z)Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/a/a/k;Z)Lcom/estrongs/android/ui/b/ag;
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const v1, 0x7f0b001a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f0b0185

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/estrongs/fs/b/q;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v1, p2, v0, p4}, Lcom/estrongs/fs/b/q;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/util/ak;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/estrongs/a/a;->setDescription(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-virtual {v3, p3}, Lcom/estrongs/a/a;->addTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V

    :cond_1
    new-instance v0, Lcom/estrongs/android/pop/app/x;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/x;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/estrongs/android/ui/b/ew;->a(Z)Lcom/estrongs/android/ui/b/ew;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ew;->show()V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ew;->c()V

    invoke-virtual {v3}, Lcom/estrongs/a/a;->execute()V

    return-object v0
.end method

.method private static a(Landroid/app/Activity;Lcom/estrongs/fs/b/z;Z)Lcom/estrongs/android/ui/b/ew;
    .locals 8

    const/4 v7, 0x0

    const v0, 0x7f0b0444

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0b0185

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/estrongs/fs/b/z;->c:Lcom/estrongs/fs/impl/pcs/a;

    iget-object v3, v3, Lcom/estrongs/fs/impl/pcs/a;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/estrongs/android/pop/app/v;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/app/v;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Ljava/lang/String;Lcom/estrongs/fs/b/z;Landroid/app/Activity;)V

    invoke-virtual {v0, v7}, Lcom/estrongs/android/ui/b/ew;->a(Z)Lcom/estrongs/android/ui/b/ew;

    const v1, 0x7f0b0447

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ew;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/w;

    invoke-direct {v1, p1, p2, p0}, Lcom/estrongs/android/pop/app/w;-><init>(Lcom/estrongs/fs/b/z;ZLandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ew;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ew;->c()V

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/DownloaderActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/v;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0444

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b047b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->b(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0364

    new-instance v2, Lcom/estrongs/android/pop/app/ab;

    invoke-direct {v2, p0, p1, p2}, Lcom/estrongs/android/pop/app/ab;-><init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/v;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->d(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0238

    new-instance v2, Lcom/estrongs/android/pop/app/z;

    invoke-direct {v2, p0, p1, p2}, Lcom/estrongs/android/pop/app/z;-><init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/v;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b044a

    new-instance v2, Lcom/estrongs/android/pop/app/y;

    invoke-direct {v2, p0, p1, p2}, Lcom/estrongs/android/pop/app/y;-><init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/v;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->b()Lcom/estrongs/android/ui/b/ag;

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PCS_Home_Page_UV"

    const-string v2, "PCS_Home_Page_UV"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/estrongs/fs/g;Z)V
    .locals 4

    const-string v0, ""

    instance-of v1, p1, Lcom/estrongs/fs/impl/pcs/a;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/fs/impl/pcs/a;

    iget-object v0, v0, Lcom/estrongs/fs/impl/pcs/a;->b:Ljava/lang/String;

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->ae()Ljava/lang/String;

    move-result-object v2

    instance-of v1, p1, Lcom/estrongs/fs/impl/pcs/a;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/estrongs/fs/b/z;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    check-cast p1, Lcom/estrongs/fs/impl/pcs/a;

    invoke-direct {v1, v3, v2, p1}, Lcom/estrongs/fs/b/z;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Lcom/estrongs/fs/impl/pcs/a;)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b001a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/b/z;->setDescription(Ljava/lang/String;)V

    invoke-static {p0, v1, p2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Lcom/estrongs/fs/b/z;Z)Lcom/estrongs/android/ui/b/ew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ew;->show()V

    invoke-virtual {v1}, Lcom/estrongs/fs/b/z;->execute()V

    return-void

    :cond_1
    new-instance v1, Lcom/estrongs/fs/b/z;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0}, Lcom/estrongs/fs/b/z;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 3

    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->ae()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/fs/b/z;

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-direct {v1, v2, v0, p1}, Lcom/estrongs/fs/b/z;-><init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v1, p2}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Lcom/estrongs/fs/b/z;Z)Lcom/estrongs/android/ui/b/ew;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ew;->show()V

    invoke-virtual {v1}, Lcom/estrongs/fs/b/z;->execute()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/DownloaderActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Landroid/app/Activity;Ljava/lang/String;)Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/u;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/u;-><init>(Lcom/estrongs/android/pop/app/DownloaderActivity;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->k()Lcom/estrongs/android/ui/pcs/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p3, p2}, Lcom/estrongs/android/ui/pcs/d;->a(ILandroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/DownloaderActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    const v0, 0x7f0b0184

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->d(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->finish()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/DownloaderActivity;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/DownloaderActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/estrongs/android/pop/app/r;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/r;-><init>(Lcom/estrongs/android/pop/app/DownloaderActivity;)V

    new-instance v1, Lcom/estrongs/android/ui/b/ag;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b001a

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/ag;->setTitle(I)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/ag;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/b/ag;->setSelectable(Z)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f0b0365

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/DownloaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0b0444

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/app/DownloaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, -0x1

    new-instance v4, Lcom/estrongs/android/pop/app/s;

    invoke-direct {v4, p0, v0}, Lcom/estrongs/android/pop/app/s;-><init>(Lcom/estrongs/android/pop/app/DownloaderActivity;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/android/ui/b/ag;->setItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/ag;->show()V

    goto :goto_1
.end method

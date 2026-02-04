.class Lcom/estrongs/android/pop/view/at;
.super Lcom/estrongs/android/ui/pcs/az;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/estrongs/android/ui/pcs/az;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/at;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/view/at;->m(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/at;Lcom/estrongs/android/ui/pcs/v;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/at;->a(Lcom/estrongs/android/ui/pcs/v;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/at;Lcom/estrongs/fs/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/at;->b(Lcom/estrongs/fs/g;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/ui/pcs/v;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/d;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/v;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/d;->a()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/at;Lcom/estrongs/android/ui/pcs/v;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/at;->b(Lcom/estrongs/android/ui/pcs/v;)V

    return-void
.end method

.method private b(Lcom/estrongs/android/ui/pcs/v;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/a;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/at;->ad:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/pcs/a;->a(Lcom/estrongs/android/ui/pcs/v;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/a;->a()V

    return-void
.end method

.method private b(Lcom/estrongs/fs/g;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/pcs/az;->a(Lcom/estrongs/fs/g;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/b/t;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/b/t;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/pop/utils/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/estrongs/android/pop/m;->I:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m:Lcom/estrongs/android/pop/q;

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/at;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/aw;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m:Lcom/estrongs/android/pop/q;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/q;->aw()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0xf

    if-ge v1, v2, :cond_2

    sget-object v1, Lcom/estrongs/fs/l;->P:Lcom/estrongs/fs/l;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/pcs/b;->setFileType(Lcom/estrongs/fs/l;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/az;->a(Lcom/estrongs/fs/b/t;Ljava/util/List;)V

    return-void

    :cond_2
    sget-object v1, Lcom/estrongs/fs/l;->O:Lcom/estrongs/fs/l;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/pcs/b;->setFileType(Lcom/estrongs/fs/l;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/estrongs/fs/l;->N:Lcom/estrongs/fs/l;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/pcs/b;->setFileType(Lcom/estrongs/fs/l;)V

    goto :goto_0
.end method

.method protected a(Lcom/estrongs/fs/g;Lcom/estrongs/android/util/TypedMap;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x8

    instance-of v0, p1, Lcom/estrongs/fs/impl/local/b;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bE(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "recycle://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PCS_DRIVE_Js1a7M5e_9yAcTvFX/files/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/estrongs/android/pop/view/au;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/view/au;-><init>(Lcom/estrongs/android/pop/view/at;Lcom/estrongs/fs/g;Lcom/estrongs/android/util/TypedMap;)V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/ui/pcs/bt;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/at;->N:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/pcs/bt;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/at;->ad:Landroid/app/Activity;

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/estrongs/android/ui/pcs/bt;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/bt;->a()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m:Lcom/estrongs/android/pop/q;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/estrongs/android/pop/q;->d(J)V

    :cond_2
    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->aa()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F:Z

    if-eqz v3, :cond_3

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->G:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->H:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/at;->H()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->G:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->H:Z

    :cond_5
    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0233

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0006

    new-instance v3, Lcom/estrongs/android/pop/view/ay;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/android/pop/view/ay;-><init>(Lcom/estrongs/android/pop/view/at;Lcom/estrongs/fs/g;)V

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0007

    new-instance v3, Lcom/estrongs/android/pop/view/ax;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/view/ax;-><init>(Lcom/estrongs/android/pop/view/at;)V

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030082

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f080270

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f08026a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f080272

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08026d

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/az;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/az;-><init>(Lcom/estrongs/android/pop/view/at;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/ag;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->m:Lcom/estrongs/android/pop/q;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->d()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Landroid/os/Handler;

    new-instance v2, Lcom/estrongs/android/pop/view/av;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/view/av;-><init>(Lcom/estrongs/android/pop/view/at;Lcom/estrongs/android/ui/pcs/v;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Landroid/os/Handler;

    new-instance v2, Lcom/estrongs/android/pop/view/aw;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/view/aw;-><init>(Lcom/estrongs/android/pop/view/at;Lcom/estrongs/android/ui/pcs/v;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/az;->a(Lcom/estrongs/fs/g;Lcom/estrongs/android/util/TypedMap;)V

    goto/16 :goto_0
.end method

.method protected a(Ljava/util/List;Lcom/estrongs/fs/c/a/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;",
            "Lcom/estrongs/fs/c/a/a;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/az;->a(Ljava/util/List;Lcom/estrongs/fs/c/a/a;)V

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 3

    invoke-super {p0}, Lcom/estrongs/android/ui/pcs/az;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PCS_DRIVE_Js1a7M5e_9yAcTvFX/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PCS_DRIVE_Js1a7M5e_9yAcTvFX"

    const-string v2, "PCS_DRIVE_Js1a7M5e_9yAcTvFX/files"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

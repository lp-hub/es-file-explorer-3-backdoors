.class Lcom/estrongs/android/pop/view/ba;
.super Lcom/estrongs/android/view/ar;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/FileExplorerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ba;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/estrongs/android/view/ar;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/ba;Lcom/estrongs/fs/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/ba;->b(Lcom/estrongs/fs/g;)V

    return-void
.end method

.method private b(Lcom/estrongs/fs/g;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/g;)V

    return-void
.end method


# virtual methods
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

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ba;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "recycle://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->aa()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/estrongs/android/pop/view/ba;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v3, v3, Lcom/estrongs/android/pop/view/FileExplorerActivity;->F:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ba;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->G:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ba;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->H:Z

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/ba;->H()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/ba;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->G:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ba;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->H:Z

    :cond_3
    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ba;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0233

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0006

    new-instance v3, Lcom/estrongs/android/pop/view/bc;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/android/pop/view/bc;-><init>(Lcom/estrongs/android/pop/view/ba;Lcom/estrongs/fs/g;)V

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0007

    new-instance v3, Lcom/estrongs/android/pop/view/bb;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/view/bb;-><init>(Lcom/estrongs/android/pop/view/ba;)V

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ba;->a:Lcom/estrongs/android/pop/view/FileExplorerActivity;

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

    new-instance v1, Lcom/estrongs/android/pop/view/bd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/bd;-><init>(Lcom/estrongs/android/pop/view/ba;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/ag;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/g;Lcom/estrongs/android/util/TypedMap;)V

    goto/16 :goto_0
.end method

.class Lcom/estrongs/android/widget/p;
.super Lcom/estrongs/android/view/ar;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/g;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;Z)V
    .locals 6

    iput-object p1, p0, Lcom/estrongs/android/widget/p;->a:Lcom/estrongs/android/widget/g;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/view/ar;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/widget/p;Lcom/estrongs/fs/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/widget/p;->b(Lcom/estrongs/fs/g;)V

    return-void
.end method

.method private b(Lcom/estrongs/fs/g;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/g;)V

    return-void
.end method


# virtual methods
.method public H()Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/p;->U()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a()I
    .locals 1

    const v0, 0x7f08019f

    return v0
.end method

.method protected a(Lcom/estrongs/fs/g;Lcom/estrongs/android/util/TypedMap;)V
    .locals 6

    const/4 v1, 0x0

    const/16 v5, 0x8

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/widget/p;->a:Lcom/estrongs/android/widget/g;

    iget-boolean v2, v2, Lcom/estrongs/android/widget/g;->a:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/widget/p;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v2}, Lcom/estrongs/android/widget/g;->c(Lcom/estrongs/android/widget/g;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/q;->K()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v2, p0, Lcom/estrongs/android/widget/p;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v2}, Lcom/estrongs/android/widget/g;->c(Lcom/estrongs/android/widget/g;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0233

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v2, 0x7f0b0006

    new-instance v3, Lcom/estrongs/android/widget/r;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/android/widget/r;-><init>(Lcom/estrongs/android/widget/p;Lcom/estrongs/fs/g;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/b/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v2, 0x7f0b0007

    new-instance v3, Lcom/estrongs/android/widget/q;

    invoke-direct {v3, p0}, Lcom/estrongs/android/widget/q;-><init>(Lcom/estrongs/android/widget/p;)V

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/b/aq;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/widget/p;->a:Lcom/estrongs/android/widget/g;

    invoke-static {v0}, Lcom/estrongs/android/widget/g;->c(Lcom/estrongs/android/widget/g;)Landroid/app/Activity;

    move-result-object v0

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

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/widget/s;

    invoke-direct {v2, p0}, Lcom/estrongs/android/widget/s;-><init>(Lcom/estrongs/android/widget/p;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto/16 :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/ar;->a(Lcom/estrongs/fs/g;Lcom/estrongs/android/util/TypedMap;)V

    goto :goto_1
.end method

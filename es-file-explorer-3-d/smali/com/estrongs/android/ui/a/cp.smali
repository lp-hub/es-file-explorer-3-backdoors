.class public Lcom/estrongs/android/ui/a/cp;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/view/PopMultiWindowGrid;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field private e:Landroid/os/Handler;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/view/FileExplorerActivity;Landroid/view/View;Landroid/os/Handler;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/estrongs/android/ui/a/cp;->f:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/a/cp;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/cp;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/estrongs/android/ui/a/cp;->e:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/a/cp;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/a/cp;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->a:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/a/cq;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/a/cq;-><init>(Lcom/estrongs/android/ui/a/cp;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/a/cp;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/a/cp;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->e:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p2}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/a/cp;)Lcom/estrongs/android/pop/view/FileExplorerActivity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    return-object v0
.end method

.method private d()V
    .locals 7

    const v6, 0x7f0800fb

    const v3, 0x7f0800fa

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/a/cp;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v2, v0, [Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->a:Landroid/view/View;

    const v3, 0x7f0800fe

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->a:Landroid/view/View;

    const v3, 0x7f0800ff

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v5

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->a:Landroid/view/View;

    const v4, 0x7f0802ea

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v3

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/a/cp;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0800fc

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/a/cp;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-array v2, v5, [Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->a:Landroid/view/View;

    const v3, 0x7f0800fe

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    aput-object v0, v2, v4

    :goto_1
    array-length v0, v2

    if-ge v1, v0, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/a/cp;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0800fc

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/a/cp;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    aget-object v0, v2, v1

    const v3, 0x7f0800fd

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/a/cp;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    aget-object v0, v2, v1

    const v3, 0x7f080104

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x3

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/a/cp;->a(Lcom/estrongs/android/ui/view/PopMultiWindowGrid;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/estrongs/android/ui/a/cr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/a/cr;-><init>(Lcom/estrongs/android/ui/a/cp;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->a(Landroid/os/Handler;)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/ui/a/cp;->e()V

    return-void
.end method

.method private e()V
    .locals 5

    const/4 v4, -0x1

    new-instance v1, Lcom/estrongs/android/ui/e/gq;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->d:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v2, p0, Lcom/estrongs/android/ui/a/cp;->c:Z

    invoke-direct {v1, v0, v2}, Lcom/estrongs/android/ui/e/gq;-><init>(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->a:Landroid/view/View;

    const v2, 0x7f0802eb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/gq;->a()Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0b0020

    const v2, 0x7f02023f

    new-instance v3, Lcom/estrongs/android/ui/a/cs;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/a/cs;-><init>(Lcom/estrongs/android/ui/a/cp;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/ui/e/gq;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const v0, 0x7f0b030f

    const v2, 0x7f02023e

    new-instance v3, Lcom/estrongs/android/ui/a/ct;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/a/ct;-><init>(Lcom/estrongs/android/ui/a/cp;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/estrongs/android/ui/e/gq;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 12

    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->a:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/estrongs/android/ui/a/cp;->f:Z

    if-eqz p1, :cond_0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/estrongs/android/ui/a/cp;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    move v4, v7

    move v5, v2

    move v6, v7

    move v7, v2

    move v8, v1

    move v10, v1

    move v11, v9

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v0, v1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->a:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3}, Landroid/view/animation/ScaleAnimation;->start()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/a/cp;->f:Z

    return v0
.end method

.method public b()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ui/d/e;->c()I

    move-result v1

    invoke-static {}, Lcom/estrongs/android/ui/d/e;->a()I

    move-result v3

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->setVisibility(I)V

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->b(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/PopMultiWindowGrid;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cp;->a:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/a/cp;->f:Z

    return-void
.end method

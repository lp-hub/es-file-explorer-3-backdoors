.class public Lcom/estrongs/android/ui/pcs/bt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/pcs/v;


# instance fields
.field a:Lcom/estrongs/android/ui/pcs/cj;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ViewFlipper;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/estrongs/android/ui/b/ag;

.field private i:Lcom/estrongs/android/ui/b/de;

.field private j:Lcom/estrongs/android/pop/q;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->k:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bt;->n:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J:Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/bt;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->j:Lcom/estrongs/android/pop/q;

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->q()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/bt;)Lcom/estrongs/android/ui/b/ag;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->h:Lcom/estrongs/android/ui/b/ag;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/bt;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/bt;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/bt;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/bt;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->e:Landroid/view/View;

    const v1, 0x7f0802ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->e:Landroid/view/View;

    const v2, 0x7f080101

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bt;->e:Landroid/view/View;

    const v3, 0x7f0802d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bt;->e:Landroid/view/View;

    const v4, 0x7f0802d1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bt;->e:Landroid/view/View;

    const v4, 0x7f0802d3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-eqz p1, :cond_1

    const v4, 0x7f0b04af

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->e:Landroid/view/View;

    const v1, 0x7f080095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    const v1, 0x7f0b0453

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_1
    const v4, 0x7f0b04ae

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/bt;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/bt;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/bt;)Landroid/widget/ViewFlipper;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/bt;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/bt;->l:Ljava/lang/String;

    return-object p1
.end method

.method public static b()Z
    .locals 4

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->aB()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    invoke-static {v2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/q;->aA()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/q;->f(J)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/q;->A(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/estrongs/android/ui/pcs/bt;->c()Z

    move-result v0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/bt;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/bt;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/bt;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static c()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    invoke-static {v2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/q;->d()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/pcs/aw;->e()I

    move-result v2

    if-ne v2, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    invoke-static {v4}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/android/pop/q;->ax()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    sget-object v2, Lcom/estrongs/android/pop/FexApplication;->a:Lcom/estrongs/android/pop/FexApplication;

    invoke-static {v2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/estrongs/android/pop/q;->b(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/pcs/bt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->m:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x40c1940000000000L    # 9000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/pcs/bt;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/bt;->c(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->l:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/estrongs/android/ui/pcs/by;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/estrongs/android/ui/pcs/by;-><init>(Lcom/estrongs/android/ui/pcs/bt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private e()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    const v2, 0x7f0b04ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    const v3, 0x7f0b0072

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/ui/b/de;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/b/de;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->i:Lcom/estrongs/android/ui/b/de;

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/pcs/bt;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->r()V

    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->i:Lcom/estrongs/android/ui/b/de;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->i:Lcom/estrongs/android/ui/b/de;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/de;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/ui/pcs/bt;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bt;->n:Z

    return v0
.end method

.method private g()V
    .locals 13

    const-wide/16 v11, 0x12c

    const/4 v4, 0x0

    const/4 v1, 0x1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v4

    move v9, v1

    move v10, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v2, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    new-instance v1, Lcom/estrongs/android/ui/pcs/bu;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/bu;-><init>(Lcom/estrongs/android/ui/pcs/bt;)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/ui/pcs/bt;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->l()V

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/ui/pcs/bt;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->l:Ljava/lang/String;

    return-object v0
.end method

.method private h()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;I)V

    const v1, 0x7f080307

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/pcs/cb;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/cb;-><init>(Lcom/estrongs/android/ui/pcs/bt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009f

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/pcs/bt;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->k:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030092

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f080095

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    const v1, 0x7f0b0453

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    iput-object v2, p0, Lcom/estrongs/android/ui/pcs/bt;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->l:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->l:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_0
    const v1, 0x7f0802d1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v3, 0x7f0b04b2

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    new-instance v3, Lcom/estrongs/android/ui/pcs/cc;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/pcs/cc;-><init>(Lcom/estrongs/android/ui/pcs/bt;Landroid/widget/EditText;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802d3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0b0364

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Lcom/estrongs/android/ui/pcs/cd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/cd;-><init>(Lcom/estrongs/android/ui/pcs/bt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private j()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030092

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0802ca

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    const v3, 0x7f0b04bd

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v0, 0x7f080101

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    const v0, 0x7f0802cc

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    const v3, 0x7f0b04b4

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    const v0, 0x7f0802cb

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v1, Lcom/estrongs/android/ui/pcs/ce;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/ce;-><init>(Lcom/estrongs/android/ui/pcs/bt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f080095

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_4
    iput-object v2, p0, Lcom/estrongs/android/ui/pcs/bt;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/bt;->f:Landroid/view/View;

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;I)V

    const v1, 0x7f0802d1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const v3, 0x7f0b04b3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    new-instance v3, Lcom/estrongs/android/ui/pcs/cf;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/pcs/cf;-><init>(Lcom/estrongs/android/ui/pcs/bt;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0802d2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0802d3

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    const v2, 0x7f0b04b2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    new-instance v2, Lcom/estrongs/android/ui/pcs/cg;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/pcs/cg;-><init>(Lcom/estrongs/android/ui/pcs/bt;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic j(Lcom/estrongs/android/ui/pcs/bt;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->f()V

    return-void
.end method

.method static synthetic k(Lcom/estrongs/android/ui/pcs/bt;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->e:Landroid/view/View;

    return-object v0
.end method

.method private k()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030090

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0802ca

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v2, 0x7f0b04bb

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const v0, 0x7f080101

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0047

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->h:Lcom/estrongs/android/ui/b/ag;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->h:Lcom/estrongs/android/ui/b/ag;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/pcs/ch;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/pcs/ch;-><init>(Lcom/estrongs/android/ui/pcs/bt;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/ag;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->h:Lcom/estrongs/android/ui/b/ag;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/pcs/ci;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/pcs/ci;-><init>(Lcom/estrongs/android/ui/pcs/bt;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/ag;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->h:Lcom/estrongs/android/ui/b/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic l(Lcom/estrongs/android/ui/pcs/bt;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->g:Landroid/view/View;

    return-object v0
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->T()V

    return-void
.end method

.method static synthetic m(Lcom/estrongs/android/ui/pcs/bt;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->f:Landroid/view/View;

    return-object v0
.end method

.method private m()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->f:Landroid/view/View;

    const v1, 0x7f0802cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->f:Landroid/view/View;

    const v1, 0x7f0802cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->f:Landroid/view/View;

    const v1, 0x7f0802cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->f:Landroid/view/View;

    const v1, 0x7f0802d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic n(Lcom/estrongs/android/ui/pcs/bt;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->o()V

    return-void
.end method

.method private o()V
    .locals 4

    const v3, 0x7f09002d

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->f:Landroid/view/View;

    const v1, 0x7f0802cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->f:Landroid/view/View;

    const v1, 0x7f0802cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->f:Landroid/view/View;

    const v1, 0x7f0802d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method static synthetic o(Lcom/estrongs/android/ui/pcs/bt;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->n()V

    return-void
.end method

.method private p()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030092

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0802ca

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v2, 0x7f0b04b8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->g:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;I)V

    const v0, 0x7f0802d1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v2, 0x7f0b04b5

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    new-instance v2, Lcom/estrongs/android/ui/pcs/bv;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/pcs/bv;-><init>(Lcom/estrongs/android/ui/pcs/bt;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0802d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    const v1, 0x7f0b0364

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    new-instance v1, Lcom/estrongs/android/ui/pcs/bw;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/bw;-><init>(Lcom/estrongs/android/ui/pcs/bt;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private q()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/pcs/cj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/pcs/cj;-><init>(Lcom/estrongs/android/ui/pcs/bt;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->a:Lcom/estrongs/android/ui/pcs/cj;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/utils/bw;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/utils/bw;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->l:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bt;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->l:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->l:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bt;->n:Z

    :cond_3
    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->g()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->h()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->i()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->j()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->p()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->k()V

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->l:Ljava/lang/String;

    if-nez v1, :cond_5

    const-string v1, "Phone_no"

    const-string v2, "Phone_no"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string v1, "Phone_get"

    const-string v2, "Phone_get"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/ui/pcs/bx;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/pcs/bx;-><init>(Lcom/estrongs/android/ui/pcs/bt;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const v0, 0x7f0b0476

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bt;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bt;->c(Ljava/lang/String;)V

    return-void
.end method

.method private s()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->aB()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v1, v0, v3

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/pcs/bt;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v0, v4

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/pcs/bt;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->l:Ljava/lang/String;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method private t()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->j:Lcom/estrongs/android/pop/q;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/q;->e(J)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->aA()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->s()V

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bt;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->n()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/ui/pcs/bt;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/utils/bw;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->e()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/ui/pcs/bz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/bz;-><init>(Lcom/estrongs/android/ui/pcs/bt;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_1
    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Press_Normalize"

    const-string v2, "Press_Normalize"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Normalize_UV"

    const-string v2, "Normalize_UV"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Lcom/estrongs/android/ui/pcs/bt;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->t()V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->h()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    :cond_0
    return-void
.end method

.method public a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->l()V

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/pcs/b;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/ui/pcs/aw;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/i/b;->l(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/estrongs/android/view/ar;->b(Z)V

    :cond_1
    :goto_0
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/util/ak;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/ui/pcs/aw;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Lcom/estrongs/fs/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z()V

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/l;->N:Lcom/estrongs/fs/l;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/pcs/b;->setFileType(Lcom/estrongs/fs/l;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/q;->d(J)V

    :cond_3
    return-void

    :cond_4
    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/ui/pcs/aw;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/aw;->b(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/ui/pcs/aw;->g()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/estrongs/android/ui/pcs/aw;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/ui/pcs/aw;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/fs/impl/i/b;->l(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v2}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v0}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v0, "pcs://"

    invoke-virtual {v2, v0}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->h:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->c:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bt;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bt;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bt;->h:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    goto :goto_0
.end method

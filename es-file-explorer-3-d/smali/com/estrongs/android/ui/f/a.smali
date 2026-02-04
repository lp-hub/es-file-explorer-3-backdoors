.class public Lcom/estrongs/android/ui/f/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/android/ui/f/f;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/view/View;

.field private e:Lcom/estrongs/android/ui/theme/al;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/estrongs/android/widget/TranslateImageView;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/estrongs/android/ui/a/s;

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/estrongs/android/ui/f/a;->l:Z

    iput v2, p0, Lcom/estrongs/android/ui/f/a;->p:I

    iput-object p1, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/f/a;->e:Lcom/estrongs/android/ui/theme/al;

    iput-object p3, p0, Lcom/estrongs/android/ui/f/a;->d:Landroid/view/View;

    iput-object p2, p0, Lcom/estrongs/android/ui/f/a;->c:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/ca;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/f/a;->m:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/f/a;->n:Z

    iput-boolean v2, p0, Lcom/estrongs/android/ui/f/a;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030084

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/f/a;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->c:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/estrongs/android/ui/f/a;->f:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->f:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->f:Landroid/view/View;

    new-instance v3, Lcom/estrongs/android/ui/f/b;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/f/b;-><init>(Lcom/estrongs/android/ui/f/a;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->f:Landroid/view/View;

    const v3, 0x7f080291

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/TranslateImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/f/a;->h:Lcom/estrongs/android/widget/TranslateImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->h:Lcom/estrongs/android/widget/TranslateImageView;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/TranslateImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->h:Lcom/estrongs/android/widget/TranslateImageView;

    new-instance v1, Lcom/estrongs/android/ui/f/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/f/c;-><init>(Lcom/estrongs/android/ui/f/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/TranslateImageView;->a(Lcom/estrongs/android/widget/bm;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030081

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/f/a;->g:Landroid/view/View;

    invoke-direct {p0}, Lcom/estrongs/android/ui/f/a;->f()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->f:Landroid/view/View;

    const v1, 0x7f080290

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/a;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/f/a;->a(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/f/a;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/f/a;->p:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/f/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/f/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/f/a;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/f/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->g:Landroid/view/View;

    return-object v0
.end method

.method private f()V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/f/d;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/ui/f/a;->g:Landroid/view/View;

    iget-object v3, p0, Lcom/estrongs/android/ui/f/a;->h:Lcom/estrongs/android/widget/TranslateImageView;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/estrongs/android/ui/f/d;-><init>(Lcom/estrongs/android/ui/f/a;Landroid/content/Context;Landroid/view/View;Lcom/estrongs/android/widget/TranslateImageView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/f/a;->a:Lcom/estrongs/android/ui/f/f;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->a:Lcom/estrongs/android/ui/f/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/f;->b()Lcom/estrongs/android/ui/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/f/a;->o:Lcom/estrongs/android/ui/a/s;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->o:Lcom/estrongs/android/ui/a/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->o:Lcom/estrongs/android/ui/a/s;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/s;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->o:Lcom/estrongs/android/ui/a/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->o:Lcom/estrongs/android/ui/a/s;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/a/s;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/f/a;->a()V

    return-void
.end method

.method public a(Z)V
    .locals 4

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/f/a;->n:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/estrongs/android/ui/f/a;->i:I

    iget-boolean v0, p0, Lcom/estrongs/android/ui/f/a;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/f/a;->n:Z

    if-nez v0, :cond_3

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/f/a;->i:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x9

    iput v0, p0, Lcom/estrongs/android/ui/f/a;->j:I

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/f/a;->d(Z)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->g:Landroid/view/View;

    const v1, 0x7f080153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/f/a;->g:Landroid/view/View;

    const v2, 0x7f080154

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/estrongs/android/ui/f/a;->m:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/estrongs/android/ui/f/a;->n:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_2
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/estrongs/android/ui/f/a;->i:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/estrongs/android/ui/f/a;->j:I

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->o:Lcom/estrongs/android/ui/a/s;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->o:Lcom/estrongs/android/ui/a/s;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/a/s;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/f/a;->a()V

    return-void
.end method

.method public b(Z)V
    .locals 3

    const/16 v2, 0x12c

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/f/a;->k:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/estrongs/android/ui/f/a;->p:I

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->d:Landroid/view/View;

    invoke-static {v0}, Lcom/estrongs/android/ui/d/a;->a(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/f/a;->h:Lcom/estrongs/android/widget/TranslateImageView;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/widget/TranslateImageView;->a(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->h:Lcom/estrongs/android/widget/TranslateImageView;

    iget v1, p0, Lcom/estrongs/android/ui/f/a;->j:I

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/TranslateImageView;->a(II)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->h:Lcom/estrongs/android/widget/TranslateImageView;

    new-instance v1, Lcom/estrongs/android/ui/f/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/f/e;-><init>(Lcom/estrongs/android/ui/f/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/TranslateImageView;->a(Lcom/estrongs/android/widget/bn;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->h:Lcom/estrongs/android/widget/TranslateImageView;

    iget v1, p0, Lcom/estrongs/android/ui/f/a;->j:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/TranslateImageView;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->h:Lcom/estrongs/android/widget/TranslateImageView;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/TranslateImageView;->b(I)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/f/a;->k:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/f/a;->p:I

    return v0
.end method

.method public c(Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c(Landroid/view/View;Z)V

    return-void
.end method

.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->f:Landroid/view/View;

    return-object v0
.end method

.method public d(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->h:Lcom/estrongs/android/widget/TranslateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->h:Lcom/estrongs/android/widget/TranslateImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/TranslateImageView;->a(Lcom/estrongs/android/widget/bn;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/f/a;->h:Lcom/estrongs/android/widget/TranslateImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/widget/TranslateImageView;->a(II)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x12c

    goto :goto_0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->a:Lcom/estrongs/android/ui/f/f;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/f/f;->c()V

    return-void
.end method

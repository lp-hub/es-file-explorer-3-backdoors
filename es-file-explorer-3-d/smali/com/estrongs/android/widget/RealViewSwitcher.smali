.class public Lcom/estrongs/android/widget/RealViewSwitcher;
.super Landroid/widget/ViewAnimator;


# instance fields
.field private a:Landroid/view/VelocityTracker;

.field private b:I

.field protected c:Landroid/widget/Scroller;

.field public d:I

.field protected e:I

.field protected f:I

.field protected g:Z

.field protected h:Lcom/estrongs/android/widget/av;

.field private i:I

.field private j:F

.field private k:F

.field private l:I

.field private m:Z

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, -0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->b:I

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:I

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->f:I

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->l:I

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->m:Z

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:I

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    iput v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->q:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->r:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->s:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->t:Z

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->u:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->v:Z

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->w:Z

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->x:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/av;

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, -0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->b:I

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:I

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->f:I

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->l:I

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->m:Z

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:I

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    iput v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->q:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->r:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->s:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->t:Z

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->u:Z

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->v:Z

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->w:Z

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->x:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/av;

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->a()V

    return-void
.end method

.method private a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFriction(F)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->d:I

    return-void
.end method

.method private b()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->u:Z

    goto :goto_0
.end method

.method private c(I)I
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    if-lt p1, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:I

    mul-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:I

    mul-int/2addr v1, p1

    iget-boolean v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    if-eqz v2, :cond_2

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:I

    :cond_2
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:I

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iput-boolean v5, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->u:Z

    goto :goto_0
.end method

.method private d(I)I
    .locals 0

    return p1
.end method

.method private d()V
    .locals 5

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->t:Z

    goto :goto_0
.end method

.method private e()V
    .locals 5

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->t:Z

    goto :goto_0
.end method

.method private f()V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(IZ)V

    return-void
.end method

.method public a(IZ)V
    .locals 2

    invoke-super {p0}, Landroid/widget/ViewAnimator;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ViewAnimator;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/estrongs/android/widget/RealViewSwitcher;->d(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    :goto_0
    return-void

    :cond_2
    if-eqz p2, :cond_3

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->l:I

    :cond_3
    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->invalidate()V

    goto :goto_0
.end method

.method public a(Lcom/estrongs/android/widget/av;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/av;

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1

    const/4 v0, -0x2

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->v:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->f()V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->requestLayout()V

    return-void
.end method

.method public b(I)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->f:I

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->f:I

    if-gez v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/av;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/av;

    invoke-interface {v1, v0}, Lcom/estrongs/android/widget/av;->d(I)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x4b0

    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:I

    div-int v5, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getScrollX()I

    move-result v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->invalidate()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->f:I

    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    if-lt v0, v1, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->w:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->q:Z

    iput-boolean p1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    return-void
.end method

.method public computeScroll()V
    .locals 6

    const/4 v2, 0x1

    const/4 v5, -0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->postInvalidate()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->f:I

    if-eq v0, v5, :cond_0

    const/4 v0, -0x1

    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->f:I

    iput v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    if-gez v3, :cond_6

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iget-boolean v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->u:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->c()V

    :cond_2
    iget-boolean v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->t:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->e()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(IZ)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/av;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/av;

    iget v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-interface {v0, v2}, Lcom/estrongs/android/widget/av;->b(I)V

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->l:I

    iget v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->l:I

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/av;

    iget v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-interface {v0, v2}, Lcom/estrongs/android/widget/av;->c(I)V

    :cond_5
    iput v5, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->f:I

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->x:Z

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    if-lt v3, v4, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    move v2, v1

    goto :goto_1
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->s:Z

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->r:Z

    return-void
.end method

.method public g()V
    .locals 3

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int v0, v1, v0

    iget-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->b(I)V

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildCount()I

    move-result v2

    if-ne v2, v0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iget-object v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    if-nez v3, :cond_2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    iget-object v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_2
    iget-object v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    iget v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->b:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-ne v2, v4, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->j:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->k:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->d:I

    if-le v3, v4, :cond_6

    if-lt v3, v2, :cond_6

    move v2, v0

    :goto_2
    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v0, :cond_7

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:I

    iget-object v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/av;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/av;

    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-interface {v2, v3}, Lcom/estrongs/android/widget/av;->a(I)V

    :cond_5
    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->x:Z

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getWidth()I

    move-result v3

    rem-int/2addr v2, v3

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->g()V

    goto :goto_1

    :pswitch_1
    iget-boolean v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->w:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->x:Z

    if-nez v2, :cond_0

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->j:F

    iput v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->k:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->b:I

    iget-object v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->c:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->x:Z

    :cond_9
    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:I

    goto/16 :goto_1

    :pswitch_2
    iget-boolean v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->w:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->x:Z

    if-nez v2, :cond_0

    :cond_a
    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:I

    iput v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->b:I

    iget-object v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->u:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->t:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:I

    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int v6, v0, v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v4, v0, v1, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, v5

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:I

    invoke-super {p0, p1, p2}, Landroid/widget/ViewAnimator;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:I

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildCount()I

    move-result v1

    if-lt v1, v3, :cond_0

    iget-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->v:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    if-ge v1, v3, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    :cond_1
    iget-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->v:Z

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->v:Z

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->f()V

    :cond_2
    iget-boolean v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->m:Z

    if-nez v1, :cond_3

    iget v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:I

    if-eq v0, v1, :cond_4

    :cond_3
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->scrollTo(II)V

    iput-boolean v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->m:Z

    :cond_4
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ViewAnimator;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/av;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getWidth()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sub-int v0, p1, v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/av;

    iget v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-interface {v1, v2, v0}, Lcom/estrongs/android/widget/av;->a(IF)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return v2

    :pswitch_0
    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->w:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->x:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:I

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->j:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->d:I

    if-le v0, v4, :cond_a

    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/av;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/av;

    iget v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-interface {v0, v4}, Lcom/estrongs/android/widget/av;->a(I)V

    :cond_3
    iput-boolean v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->x:Z

    iput v2, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:I

    :cond_4
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->j:F

    sub-float/2addr v0, v3

    float-to-int v4, v0

    iput v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->j:F

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getScrollX()I

    move-result v3

    add-int v0, v3, v4

    iget v5, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-direct {p0, v5}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v5

    if-ge v0, v5, :cond_5

    iget-boolean v6, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->r:Z

    if-eqz v6, :cond_1

    :cond_5
    if-le v0, v5, :cond_6

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->s:Z

    if-eqz v0, :cond_1

    :cond_6
    if-gez v4, :cond_c

    if-lez v3, :cond_8

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    if-eqz v0, :cond_7

    add-int v0, v3, v4

    invoke-direct {p0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v5

    if-ge v0, v5, :cond_b

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->t:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->d()V

    :cond_7
    :goto_2
    neg-int v0, v3

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->scrollBy(II)V

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->h:Lcom/estrongs/android/widget/av;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:I

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getScrollX()I

    move-result v3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    div-int v0, v3, v0

    iget-boolean v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    if-eqz v3, :cond_13

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_12

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    add-int/lit8 v1, v0, -0x1

    :cond_9
    :goto_4
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    if-ge v1, v0, :cond_1

    if-ltz v1, :cond_1

    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->p:I

    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_1

    :cond_b
    invoke-direct {p0, v2}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v5

    if-ge v0, v5, :cond_7

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->u:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->c()V

    goto :goto_2

    :cond_c
    if-lez v4, :cond_8

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    if-eqz v0, :cond_d

    add-int v0, v3, v4

    iget v5, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v5

    if-le v0, v5, :cond_e

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->u:Z

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->b()V

    :cond_d
    :goto_5
    :try_start_0
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    if-lez v0, :cond_11

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->u:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_6
    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_8

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->scrollBy(II)V

    goto :goto_3

    :cond_e
    iget v5, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v5}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v5

    iget v6, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:I

    sub-int/2addr v5, v6

    if-le v0, v5, :cond_d

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->t:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->e()V

    goto :goto_5

    :cond_f
    :try_start_1
    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->t:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(I)I

    move-result v0

    iget v5, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->n:I

    add-int/2addr v0, v5

    goto :goto_6

    :cond_10
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    move v0, v1

    goto :goto_6

    :cond_12
    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    if-ge v0, v3, :cond_9

    :cond_13
    move v1, v0

    goto/16 :goto_4

    :pswitch_2
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:I

    if-ne v0, v2, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    const/16 v3, 0x12c

    if-le v0, v3, :cond_17

    iget-boolean v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    if-eqz v3, :cond_16

    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    if-ltz v3, :cond_17

    :cond_14
    :try_start_2
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getScrollX()I

    move-result v3

    if-le v0, v3, :cond_19

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->b(I)V

    :goto_7
    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    :cond_15
    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:I

    goto/16 :goto_0

    :cond_16
    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    if-gtz v3, :cond_14

    :cond_17
    const/16 v3, -0x12c

    if-ge v0, v3, :cond_1b

    iget-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->g:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    if-ge v0, v3, :cond_1b

    :cond_18
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->getScrollX()I

    move-result v3

    if-ge v0, v3, :cond_1c

    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->b(I)V

    goto :goto_7

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->g()V

    goto/16 :goto_0

    :cond_19
    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->g()V

    goto :goto_7

    :cond_1a
    iget v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->e:I

    iget v3, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->o:I

    add-int/lit8 v3, v3, -0x1

    if-lt v0, v3, :cond_18

    :cond_1b
    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->g()V

    goto :goto_7

    :cond_1c
    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->g()V

    goto :goto_7

    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v4, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->a:Landroid/view/VelocityTracker;

    :cond_1d
    iput v1, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->i:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public removeViewAt(I)V
    .locals 1

    const/4 v0, -0x2

    iput v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->l:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/RealViewSwitcher;->v:Z

    invoke-super {p0, p1}, Landroid/widget/ViewAnimator;->removeViewAt(I)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->f()V

    invoke-virtual {p0}, Lcom/estrongs/android/widget/RealViewSwitcher;->requestLayout()V

    return-void
.end method

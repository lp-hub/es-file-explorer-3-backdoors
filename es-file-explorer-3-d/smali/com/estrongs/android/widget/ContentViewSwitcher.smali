.class public Lcom/estrongs/android/widget/ContentViewSwitcher;
.super Lcom/estrongs/android/widget/RealViewSwitcher;

# interfaces
.implements Lcom/estrongs/android/ui/drag/i;
.implements Lcom/estrongs/android/ui/drag/j;


# instance fields
.field private a:Lcom/estrongs/android/ui/drag/d;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/ar;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/widget/ContentViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/widget/RealViewSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->j:Z

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p1, v0}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->i:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(I)V

    iget v0, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->e:I

    invoke-static {v0}, Lcom/estrongs/android/ui/d/e;->a(I)V

    return-void
.end method

.method public a(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/drag/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->a:Lcom/estrongs/android/ui/drag/d;

    return-void
.end method

.method public a(Lcom/estrongs/fs/g;Lcom/estrongs/android/view/ar;Z)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->a:Lcom/estrongs/android/ui/drag/d;

    sget v4, Lcom/estrongs/android/ui/drag/d;->a:I

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/estrongs/android/ui/drag/d;->a(Lcom/estrongs/fs/g;Lcom/estrongs/android/view/ar;Lcom/estrongs/android/ui/drag/j;IZ)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/ar;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->b:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->j:Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ContentViewSwitcher;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/widget/ContentViewSwitcher;->getChildCount()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ContentViewSwitcher;->getChildCount()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-static {v0}, Lcom/estrongs/android/ui/d/e;->a(I)V

    invoke-super {p0, p1}, Lcom/estrongs/android/widget/RealViewSwitcher;->b(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->b:Ljava/util/List;

    iget v1, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->D()Landroid/widget/AbsListView;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->i:I

    neg-int v1, v1

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    return-void
.end method

.method public d()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->b:Ljava/util/List;

    iget v1, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/ar;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->D()Landroid/widget/AbsListView;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->i:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    return-void
.end method

.method public e()Landroid/graphics/Rect;
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ContentViewSwitcher;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ContentViewSwitcher;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v0, v0, v6

    invoke-virtual {p0}, Lcom/estrongs/android/widget/ContentViewSwitcher;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->j:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/estrongs/android/widget/RealViewSwitcher;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeViewAt(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/estrongs/android/widget/RealViewSwitcher;->removeViewAt(I)V

    iget v0, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->e:I

    iget v1, p0, Lcom/estrongs/android/widget/ContentViewSwitcher;->e:I

    if-gt p1, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/widget/ContentViewSwitcher;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ContentViewSwitcher;->a(I)V

    return-void
.end method

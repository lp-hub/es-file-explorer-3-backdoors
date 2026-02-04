.class public abstract Lcom/estrongs/android/ui/e/gu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/e/gp;


# instance fields
.field private a:Landroid/content/Context;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field private d:I

.field private e:Landroid/view/View;

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/estrongs/android/ui/e/gy;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/estrongs/android/ui/theme/al;

.field private h:Landroid/widget/LinearLayout;

.field private i:I

.field private j:Lcom/estrongs/android/pop/esclasses/ESScrollView;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/gu;->b:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/gu;->f:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/gu;->c:Z

    new-instance v0, Lcom/estrongs/android/ui/e/gv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/gv;-><init>(Lcom/estrongs/android/ui/e/gu;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/gu;->m:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/e/gw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/gw;-><init>(Lcom/estrongs/android/ui/e/gu;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/gu;->n:Landroid/view/View$OnLongClickListener;

    iput-object p1, p0, Lcom/estrongs/android/ui/e/gu;->a:Landroid/content/Context;

    iput p2, p0, Lcom/estrongs/android/ui/e/gu;->d:I

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/gu;->g:Lcom/estrongs/android/ui/theme/al;

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/gu;->e()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/gu;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/e/gu;->d:I

    return v0
.end method

.method private a(Lcom/estrongs/android/view/a/a;Lcom/estrongs/android/ui/e/gy;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/estrongs/android/ui/e/gy;->b(Lcom/estrongs/android/ui/e/gy;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1}, Lcom/estrongs/android/view/a/a;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->g:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {p1}, Lcom/estrongs/android/view/a/a;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/theme/al;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/estrongs/android/view/a/a;->a(Landroid/graphics/drawable/Drawable;)Lcom/estrongs/android/view/a/a;

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/estrongs/android/view/a/a;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/estrongs/android/view/a/a;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    :goto_0
    invoke-virtual {p2}, Lcom/estrongs/android/ui/e/gy;->a()V

    if-eqz p3, :cond_2

    invoke-virtual {p2}, Lcom/estrongs/android/ui/e/gy;->d()V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/estrongs/android/ui/e/gy;->c()V

    goto :goto_1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/e/gu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/e/gu;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->k:Landroid/view/View;

    return-object v0
.end method

.method private c(I)V
    .locals 4

    iget v0, p0, Lcom/estrongs/android/ui/e/gu;->i:I

    if-le v0, p1, :cond_0

    move v1, p1

    :goto_0
    iget v0, p0, Lcom/estrongs/android/ui/e/gu;->i:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/e/gy;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/gy;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/e/gu;->i:I

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/e/gy;

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/gu;->a(I)Lcom/estrongs/android/ui/e/gy;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/e/gu;->f:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/e/gu;->h:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/estrongs/android/ui/e/gy;->a(Lcom/estrongs/android/ui/e/gy;)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/gy;->a()V

    goto :goto_2

    :cond_2
    iput p1, p0, Lcom/estrongs/android/ui/e/gu;->i:I

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/ui/e/gu;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/e/gu;)Lcom/estrongs/android/pop/esclasses/ESScrollView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->j:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/gu;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->e:Landroid/view/View;

    const v1, 0x7f080183

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESScrollView;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/gu;->j:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->e:Landroid/view/View;

    const v1, 0x7f080182

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/gu;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->e:Landroid/view/View;

    const v1, 0x7f080185

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/gu;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->j:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->b()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->j:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    new-instance v1, Lcom/estrongs/android/ui/e/gx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/e/gx;-><init>(Lcom/estrongs/android/ui/e/gu;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->a(Lcom/estrongs/android/pop/esclasses/m;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->e:Landroid/view/View;

    const v1, 0x7f080184

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/gu;->h:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->e:Landroid/view/View;

    return-object v0
.end method

.method protected a(I)Lcom/estrongs/android/ui/e/gy;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030079

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0800f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0800e2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/ui/e/gy;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/e/gy;-><init>(Lcom/estrongs/android/ui/e/gu;)V

    invoke-static {v3, v0}, Lcom/estrongs/android/ui/e/gy;->a(Lcom/estrongs/android/ui/e/gy;Landroid/view/View;)Landroid/view/View;

    invoke-static {v3, v1}, Lcom/estrongs/android/ui/e/gy;->a(Lcom/estrongs/android/ui/e/gy;Landroid/widget/Button;)Landroid/widget/Button;

    invoke-static {v3}, Lcom/estrongs/android/ui/e/gy;->a(Lcom/estrongs/android/ui/e/gy;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/estrongs/android/ui/e/gy;->a(Lcom/estrongs/android/ui/e/gy;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/gu;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v3}, Lcom/estrongs/android/ui/e/gy;->a(Lcom/estrongs/android/ui/e/gy;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/gu;->n:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-static {v3, v2}, Lcom/estrongs/android/ui/e/gy;->b(Lcom/estrongs/android/ui/e/gy;Landroid/view/View;)Landroid/view/View;

    return-object v3
.end method

.method public abstract a(ILcom/estrongs/android/view/a/a;)V
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/gu;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    iget v0, p0, Lcom/estrongs/android/ui/e/gu;->i:I

    if-eq v5, v0, :cond_0

    invoke-direct {p0, v5}, Lcom/estrongs/android/ui/e/gu;->c(I)V

    :cond_0
    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/e/gy;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/gu;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/view/a/a;

    if-nez v4, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v1, v0, v2}, Lcom/estrongs/android/ui/e/gu;->a(Lcom/estrongs/android/view/a/a;Lcom/estrongs/android/ui/e/gy;Z)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/gu;->b()V

    return-void
.end method

.method public b(I)Lcom/estrongs/android/view/a/a;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->j:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/gu;->h:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->a(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/estrongs/android/ui/e/gu;->c:Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->j:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/gu;->h:Landroid/widget/LinearLayout;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->a(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public d()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/gu;->j:Lcom/estrongs/android/pop/esclasses/ESScrollView;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/esclasses/ESScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/gu;->c:Z

    :goto_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/gu;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/gu;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/estrongs/android/ui/e/gu;->c:Z

    goto :goto_0
.end method

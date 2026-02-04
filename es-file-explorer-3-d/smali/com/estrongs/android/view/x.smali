.class public Lcom/estrongs/android/view/x;
.super Lcom/estrongs/android/view/cq;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/estrongs/android/view/n;

.field f:Lcom/estrongs/android/d/i;

.field protected g:Landroid/widget/LinearLayout;

.field h:Landroid/widget/LinearLayout$LayoutParams;

.field protected i:Landroid/widget/BaseAdapter;

.field private j:Z

.field private k:Lcom/estrongs/android/ui/theme/al;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/view/n;Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/view/n;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/view/n;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/cq;-><init>(Landroid/app/Activity;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/x;->d:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/x;->j:Z

    iput-object v1, p0, Lcom/estrongs/android/view/x;->f:Lcom/estrongs/android/d/i;

    iput-object v1, p0, Lcom/estrongs/android/view/x;->g:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/estrongs/android/view/x;->h:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v0, p0, Lcom/estrongs/android/view/x;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object p1, p0, Lcom/estrongs/android/view/x;->e:Lcom/estrongs/android/view/n;

    iput-boolean p3, p0, Lcom/estrongs/android/view/x;->j:Z

    invoke-direct {p0}, Lcom/estrongs/android/view/x;->e()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/x;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/x;->f()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/view/x;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/x;->j:Z

    return v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/x;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/x;->k:Lcom/estrongs/android/ui/theme/al;

    const v0, 0x7f08024a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/x;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/view/x;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/view/x;->h:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iget-object v0, p0, Lcom/estrongs/android/view/x;->i:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/x;->b()Landroid/widget/BaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/x;->i:Landroid/widget/BaseAdapter;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/x;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const v0, 0x7f08024b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/x;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/view/x;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/view/x;->b:Landroid/widget/Button;

    const v1, 0x7f020051

    const v2, 0x7f020052

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/android/view/x;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f08024c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/x;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/view/x;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/view/x;->c:Landroid/widget/Button;

    const v1, 0x7f02004f

    const v2, 0x7f020050

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/android/view/x;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/x;->b:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/view/y;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/y;-><init>(Lcom/estrongs/android/view/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/x;->c:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/view/z;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/z;-><init>(Lcom/estrongs/android/view/x;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private f()V
    .locals 2

    new-instance v0, Lcom/estrongs/android/view/ac;

    const-string v1, "ThumnailLoader - ClipboardItem"

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/view/ac;-><init>(Lcom/estrongs/android/view/x;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/view/x;->f:Lcom/estrongs/android/d/i;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030073

    return v0
.end method

.method public a(II)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Lcom/estrongs/android/ui/theme/am;

    new-array v1, v8, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1, p2}, Lcom/estrongs/android/ui/theme/am;-><init>([II)V

    new-instance v1, Lcom/estrongs/android/ui/theme/am;

    new-array v2, v7, [I

    const v3, 0x10100a7

    aput v3, v2, v6

    invoke-direct {v1, v2, p2}, Lcom/estrongs/android/ui/theme/am;-><init>([II)V

    new-instance v2, Lcom/estrongs/android/ui/theme/am;

    new-array v3, v7, [I

    const v4, 0x101009c

    aput v4, v3, v6

    invoke-direct {v2, v3, p2}, Lcom/estrongs/android/ui/theme/am;-><init>([II)V

    new-instance v3, Lcom/estrongs/android/ui/theme/am;

    new-array v4, v6, [I

    invoke-direct {v3, v4, p1}, Lcom/estrongs/android/ui/theme/am;-><init>([II)V

    iget-object v4, p0, Lcom/estrongs/android/view/x;->k:Lcom/estrongs/android/ui/theme/al;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/estrongs/android/ui/theme/am;

    aput-object v0, v5, v6

    aput-object v1, v5, v7

    aput-object v2, v5, v8

    const/4 v0, 0x3

    aput-object v3, v5, v0

    invoke-virtual {v4, v5}, Lcom/estrongs/android/ui/theme/al;->a([Lcom/estrongs/android/ui/theme/am;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x101009c
        0x10100a7
    .end array-data
.end method

.method public a(Lcom/estrongs/android/view/n;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/x;->e:Lcom/estrongs/android/view/n;

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/x;->e:Lcom/estrongs/android/view/n;

    invoke-virtual {v0}, Lcom/estrongs/android/view/n;->f()V

    iget-object v0, p0, Lcom/estrongs/android/view/x;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v1, p0, Lcom/estrongs/android/view/x;->j:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/estrongs/fs/b/y;

    iget-object v2, p0, Lcom/estrongs/android/view/x;->ad:Landroid/app/Activity;

    invoke-static {v2}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->v()Lcom/estrongs/fs/g;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/estrongs/fs/b/y;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/g;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/view/x;->ad:Landroid/app/Activity;

    const v4, 0x7f0b02bb

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/y;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/estrongs/fs/b/y;->a(Z)V

    new-instance v2, Lcom/estrongs/android/ui/b/ew;

    iget-object v3, p0, Lcom/estrongs/android/view/x;->ad:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/view/x;->ad:Landroid/app/Activity;

    const v5, 0x7f0b007e

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/estrongs/android/ui/b/ew;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/ew;->show()V

    invoke-virtual {v1}, Lcom/estrongs/fs/b/y;->execute()V

    :goto_0
    const-string v1, "paste_mode"

    iget-object v2, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Lcom/estrongs/android/ui/view/az;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/view/az;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v7, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s:Z

    iget-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->i:Lcom/estrongs/android/ui/view/az;

    const-string v2, "normal_mode"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/view/az;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "normal_mode"

    iput-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lcom/estrongs/fs/b/i;

    iget-object v2, p0, Lcom/estrongs/android/view/x;->ad:Landroid/app/Activity;

    invoke-static {v2}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->v()Lcom/estrongs/fs/g;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lcom/estrongs/fs/b/i;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/g;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/view/x;->ad:Landroid/app/Activity;

    const v4, 0x7f0b02ba

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/i;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/estrongs/fs/b/i;->a(Z)V

    new-instance v2, Lcom/estrongs/android/ui/b/ew;

    iget-object v3, p0, Lcom/estrongs/android/view/x;->ad:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/view/x;->ad:Landroid/app/Activity;

    const v5, 0x7f0b007f

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/estrongs/android/ui/b/ew;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/b/ew;->show()V

    invoke-virtual {v1}, Lcom/estrongs/fs/b/i;->execute()V

    goto :goto_0
.end method

.method protected b()Landroid/widget/BaseAdapter;
    .locals 1

    new-instance v0, Lcom/estrongs/android/view/aa;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/aa;-><init>(Lcom/estrongs/android/view/x;)V

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/x;->d:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/x;->a(Ljava/util/List;)V

    iget-boolean v0, p0, Lcom/estrongs/android/view/x;->j:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/x;->e:Lcom/estrongs/android/view/n;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/view/n;->b(Lcom/estrongs/android/view/x;)V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/x;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/view/x;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    rem-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_1

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/estrongs/android/view/x;->ad:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/estrongs/android/view/x;->g:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/view/x;->g:Landroid/widget/LinearLayout;

    const/16 v3, 0xc

    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/view/x;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v2, p0, Lcom/estrongs/android/view/x;->a:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/estrongs/android/view/x;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/view/x;->g:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/estrongs/android/view/x;->i:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, v0, v5, v5}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/view/x;->h:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/estrongs/android/view/x;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/estrongs/android/view/x;

    iget-object v1, p1, Lcom/estrongs/android/view/x;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/view/x;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcom/estrongs/android/view/x;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/view/x;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/x;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    return v0
.end method

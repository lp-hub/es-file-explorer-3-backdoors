.class public Lcom/estrongs/android/widget/ab;
.super Lcom/estrongs/android/widget/ah;


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Z

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/view/animation/TranslateAnimation;

.field f:Landroid/view/animation/TranslateAnimation;

.field g:Landroid/view/animation/TranslateAnimation;

.field h:Landroid/view/animation/TranslateAnimation;

.field private p:Lcom/estrongs/android/view/bu;

.field private q:Landroid/view/View;

.field private r:Lcom/estrongs/android/widget/RealViewSwitcher;

.field private s:Landroid/widget/LinearLayout;

.field private t:Z

.field private u:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/android/widget/an;Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/widget/ah;-><init>(Landroid/app/Activity;Lcom/estrongs/android/widget/an;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/ab;->a:Ljava/util/List;

    iput-boolean v3, p0, Lcom/estrongs/android/widget/ab;->t:Z

    new-instance v0, Lcom/estrongs/android/widget/ad;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/ad;-><init>(Lcom/estrongs/android/widget/ab;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ab;->u:Landroid/widget/AdapterView$OnItemClickListener;

    iput-boolean p3, p0, Lcom/estrongs/android/widget/ab;->t:Z

    const v0, 0x7f08022b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/widget/ab;->s:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->s:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/estrongs/android/widget/ab;->themeManager:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f02006f

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/widget/ab;->d()V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->i:Lcom/estrongs/android/view/bu;

    iget-object v1, p0, Lcom/estrongs/android/widget/ab;->u:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bu;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ab;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/widget/ab;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->s:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->r:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0, v3}, Lcom/estrongs/android/widget/RealViewSwitcher;->removeViewAt(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/widget/ab;)Lcom/estrongs/android/ui/theme/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->themeManager:Lcom/estrongs/android/ui/theme/al;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/widget/ab;)Lcom/estrongs/android/ui/theme/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->themeManager:Lcom/estrongs/android/ui/theme/al;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/widget/ab;)Lcom/estrongs/android/ui/theme/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->themeManager:Lcom/estrongs/android/ui/theme/al;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/widget/ab;)Lcom/estrongs/android/ui/theme/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->themeManager:Lcom/estrongs/android/ui/theme/al;

    return-object v0
.end method

.method private d()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->p:Lcom/estrongs/android/view/bu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/widget/ac;

    iget-object v2, p0, Lcom/estrongs/android/widget/ab;->j:Landroid/app/Activity;

    iget-object v3, p0, Lcom/estrongs/android/widget/ab;->q:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/ac;-><init>(Lcom/estrongs/android/widget/ab;Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/ab;->p:Lcom/estrongs/android/view/bu;

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->p:Lcom/estrongs/android/view/bu;

    iget-object v1, p0, Lcom/estrongs/android/widget/ab;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bu;->j(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->p:Lcom/estrongs/android/view/bu;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bu;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->p:Lcom/estrongs/android/view/bu;

    iget-object v1, p0, Lcom/estrongs/android/widget/ab;->u:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bu;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->p:Lcom/estrongs/android/view/bu;

    iget-object v1, p0, Lcom/estrongs/android/widget/ab;->o:Lcom/estrongs/android/view/br;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bu;->a(Lcom/estrongs/android/view/br;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->p:Lcom/estrongs/android/view/bu;

    const-string v1, "SP://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bu;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/widget/ab;)Lcom/estrongs/android/widget/RealViewSwitcher;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->r:Lcom/estrongs/android/widget/RealViewSwitcher;

    return-object v0
.end method

.method private e()V
    .locals 3

    const v0, 0x7f08022c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/ab;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/widget/ab;->themeManager:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->c:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/widget/af;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/af;-><init>(Lcom/estrongs/android/widget/ab;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/widget/ab;)Lcom/estrongs/android/ui/theme/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->themeManager:Lcom/estrongs/android/ui/theme/al;

    return-object v0
.end method

.method private f()V
    .locals 3

    const v0, 0x7f08022d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/ab;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/widget/ab;->themeManager:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f02003b

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->d:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/widget/ag;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/ag;-><init>(Lcom/estrongs/android/widget/ab;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/widget/ab;)Lcom/estrongs/android/ui/theme/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->themeManager:Lcom/estrongs/android/ui/theme/al;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/widget/ab;)Lcom/estrongs/android/ui/theme/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->themeManager:Lcom/estrongs/android/ui/theme/al;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/widget/ab;)Lcom/estrongs/android/ui/theme/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->themeManager:Lcom/estrongs/android/ui/theme/al;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030067

    return v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/widget/ah;->a(Landroid/content/Context;)V

    const v0, 0x7f08022e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/estrongs/android/widget/ab;->q:Landroid/view/View;

    const v0, 0x7f0800df

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/widget/RealViewSwitcher;

    iput-object v0, p0, Lcom/estrongs/android/widget/ab;->r:Lcom/estrongs/android/widget/RealViewSwitcher;

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->r:Lcom/estrongs/android/widget/RealViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->r:Lcom/estrongs/android/widget/RealViewSwitcher;

    new-instance v1, Lcom/estrongs/android/widget/ae;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/ae;-><init>(Lcom/estrongs/android/widget/ab;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/RealViewSwitcher;->a(Lcom/estrongs/android/widget/av;)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/ab;->e()V

    invoke-direct {p0}, Lcom/estrongs/android/widget/ab;->f()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/ab;->b:Z

    return-void
.end method

.method protected b()Lcom/estrongs/android/view/bu;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->r:Lcom/estrongs/android/widget/RealViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/RealViewSwitcher;->h()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->i:Lcom/estrongs/android/view/bu;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->p:Lcom/estrongs/android/view/bu;

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/widget/ah;->b(Z)V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/ab;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->p:Lcom/estrongs/android/view/bu;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bu;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->p:Lcom/estrongs/android/view/bu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bu;->b(Z)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/widget/ah;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->p:Lcom/estrongs/android/view/bu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->p:Lcom/estrongs/android/view/bu;

    invoke-virtual {v0}, Lcom/estrongs/android/view/bu;->a_()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/widget/ah;->show()V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/ab;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->i:Lcom/estrongs/android/view/bu;

    invoke-virtual {v0}, Lcom/estrongs/android/view/bu;->Y()Lcom/estrongs/android/d/i;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->i:Lcom/estrongs/android/view/bu;

    invoke-virtual {v0}, Lcom/estrongs/android/view/bu;->K()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->i:Lcom/estrongs/android/view/bu;

    invoke-virtual {v0}, Lcom/estrongs/android/view/bu;->g()V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/ab;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/ab;->p:Lcom/estrongs/android/view/bu;

    invoke-virtual {v0}, Lcom/estrongs/android/view/bu;->g()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/ab;->b:Z

    :cond_2
    return-void
.end method

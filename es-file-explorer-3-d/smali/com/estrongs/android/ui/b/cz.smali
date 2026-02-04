.class public Lcom/estrongs/android/ui/b/cz;
.super Lcom/estrongs/android/ui/b/ag;


# instance fields
.field private a:Lcom/estrongs/android/ui/a/f;

.field private b:Lcom/estrongs/android/ui/a/e;

.field private c:Lcom/estrongs/android/ui/b/dd;

.field private d:Lcom/estrongs/android/ui/b/dc;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private final i:I

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private final m:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/estrongs/android/ui/b/cz;->i:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/android/ui/b/cz;->m:I

    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/cz;->setTitle(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/cz;->a()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/cz;)Lcom/estrongs/android/ui/b/dd;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cz;->c:Lcom/estrongs/android/ui/b/dd;

    return-object v0
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    const v0, 0x7f0800fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x3

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/b/cz;->b(Landroid/view/View;I)V

    const v0, 0x7f0800fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/b/cz;->b(Landroid/view/View;I)V

    const v0, 0x7f0800fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/b/cz;->b(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/b/cz;)Lcom/estrongs/android/ui/b/dc;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cz;->d:Lcom/estrongs/android/ui/b/dc;

    return-object v0
.end method

.method private b(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cz;->a:Lcom/estrongs/android/ui/a/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/estrongs/android/ui/a/f;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/da;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/ui/b/da;-><init>(Lcom/estrongs/android/ui/b/cz;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c(Landroid/view/View;I)V
    .locals 2

    const v0, 0x7f0800fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/b/cz;->d(Landroid/view/View;I)V

    const v0, 0x7f0800fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/b/cz;->d(Landroid/view/View;I)V

    const v0, 0x7f0800fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/b/cz;->d(Landroid/view/View;I)V

    const v0, 0x7f080104

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/b/cz;->d(Landroid/view/View;I)V

    return-void
.end method

.method private d(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cz;->b:Lcom/estrongs/android/ui/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/estrongs/android/ui/a/e;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/db;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/ui/b/db;-><init>(Lcom/estrongs/android/ui/b/cz;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 8

    const v7, 0x7f0800fe

    const v6, 0x7f0800fa

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const v1, 0x7f0800f9

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/b/cz;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cz;->e:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/b/cz;->f:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cz;->e:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/b/cz;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cz;->e:Landroid/view/View;

    const v2, 0x7f0800ff

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/b/cz;->h:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/a/f;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/cz;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/a/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/b/cz;->a:Lcom/estrongs/android/ui/a/f;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cz;->f:Landroid/view/View;

    invoke-direct {p0, v1, v3}, Lcom/estrongs/android/ui/b/cz;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cz;->g:Landroid/view/View;

    invoke-direct {p0, v1, v4}, Lcom/estrongs/android/ui/b/cz;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cz;->h:Landroid/view/View;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/estrongs/android/ui/b/cz;->a(Landroid/view/View;I)V

    const v1, 0x7f080102

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/b/cz;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cz;->j:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/b/cz;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cz;->j:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/b/cz;->l:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/a/e;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/cz;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/a/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/b/cz;->b:Lcom/estrongs/android/ui/a/e;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cz;->k:Landroid/view/View;

    invoke-direct {p0, v1, v3}, Lcom/estrongs/android/ui/b/cz;->c(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cz;->l:Landroid/view/View;

    invoke-direct {p0, v1, v4}, Lcom/estrongs/android/ui/b/cz;->c(Landroid/view/View;I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/cz;->setContentView(Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cz;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->ak()Z

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/cz;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/q;->am()Z

    move-result v2

    or-int/2addr v1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cz;->j:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f080100

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/android/ui/b/dc;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/cz;->d:Lcom/estrongs/android/ui/b/dc;

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/b/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/cz;->c:Lcom/estrongs/android/ui/b/dd;

    return-void
.end method

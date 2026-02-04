.class public Lcom/estrongs/android/ui/b/cx;
.super Lcom/estrongs/android/ui/b/ag;


# instance fields
.field private a:Lcom/estrongs/android/ui/a/e;

.field private b:Lcom/estrongs/android/ui/b/dc;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/android/ui/b/cx;->f:I

    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/cx;->setTitle(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/cx;->a()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/cx;)Lcom/estrongs/android/ui/b/dc;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cx;->b:Lcom/estrongs/android/ui/b/dc;

    return-object v0
.end method

.method private a(Landroid/view/View;I)V
    .locals 2

    const v0, 0x7f0800fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/b/cx;->b(Landroid/view/View;I)V

    const v0, 0x7f0800fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/b/cx;->b(Landroid/view/View;I)V

    const v0, 0x7f0800fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/b/cx;->b(Landroid/view/View;I)V

    const v0, 0x7f080104

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x4

    add-int/lit8 v1, v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/b/cx;->b(Landroid/view/View;I)V

    return-void
.end method

.method private b(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cx;->a:Lcom/estrongs/android/ui/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/estrongs/android/ui/a/e;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/cy;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/ui/b/cy;-><init>(Lcom/estrongs/android/ui/b/cx;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/estrongs/android/ui/b/cx;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0800f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f080100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f080102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/b/cx;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cx;->c:Landroid/view/View;

    const v2, 0x7f0800fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/b/cx;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cx;->c:Landroid/view/View;

    const v2, 0x7f0800fe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/ui/b/cx;->e:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/ui/a/e;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/cx;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/a/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/b/cx;->a:Lcom/estrongs/android/ui/a/e;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cx;->d:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/estrongs/android/ui/b/cx;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/cx;->e:Landroid/view/View;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/estrongs/android/ui/b/cx;->a(Landroid/view/View;I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/cx;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/b/dc;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/cx;->b:Lcom/estrongs/android/ui/b/dc;

    return-void
.end method

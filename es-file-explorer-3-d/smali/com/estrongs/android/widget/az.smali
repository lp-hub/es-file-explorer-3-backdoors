.class public Lcom/estrongs/android/widget/az;
.super Lcom/estrongs/android/ui/b/ag;


# instance fields
.field a:Lcom/estrongs/android/widget/bc;

.field protected b:Landroid/widget/ProgressBar;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/TextView;

.field protected f:Ljava/text/NumberFormat;

.field protected g:Landroid/widget/TextView;

.field protected h:J

.field protected i:J

.field protected j:Ljava/lang/CharSequence;

.field private k:I

.field private l:J

.field private m:Landroid/os/Handler;

.field private n:Lcom/estrongs/android/widget/bd;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/widget/az;->k:I

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/az;->f:Ljava/text/NumberFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/widget/az;->l:J

    new-instance v0, Lcom/estrongs/android/widget/be;

    invoke-direct {v0}, Lcom/estrongs/android/widget/be;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/az;->n:Lcom/estrongs/android/widget/bd;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/az;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/widget/az;->setContentView(Landroid/view/View;)V

    const v0, 0x7f080075

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/widget/az;->b:Landroid/widget/ProgressBar;

    const v0, 0x7f08001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/az;->c:Landroid/widget/TextView;

    const v0, 0x7f080136

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/az;->e:Landroid/widget/TextView;

    const v0, 0x7f08004c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/az;->d:Landroid/widget/TextView;

    const v0, 0x7f080135

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/az;->g:Landroid/widget/TextView;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/az;->c:Landroid/widget/TextView;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide v3, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/az;->c:Landroid/widget/TextView;

    const v1, 0x7f0b0212

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/widget/ba;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/ba;-><init>(Lcom/estrongs/android/widget/az;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/az;->m:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/widget/az;)J
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/android/widget/az;->l:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/estrongs/android/widget/az;->l:J

    return-wide v0
.end method

.method static synthetic b(Lcom/estrongs/android/widget/az;)Lcom/estrongs/android/widget/bd;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/az;->n:Lcom/estrongs/android/widget/bd;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    const-wide/16 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/widget/az;->j:Ljava/lang/CharSequence;

    iput-wide v1, p0, Lcom/estrongs/android/widget/az;->i:J

    iput-wide v1, p0, Lcom/estrongs/android/widget/az;->h:J

    iget-object v0, p0, Lcom/estrongs/android/widget/az;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/widget/az;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/az;->n:Lcom/estrongs/android/widget/bd;

    iget-object v1, p0, Lcom/estrongs/android/widget/az;->b:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/estrongs/android/widget/az;->g:Landroid/widget/TextView;

    iget-wide v3, p0, Lcom/estrongs/android/widget/az;->h:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/estrongs/android/widget/bd;->a(Landroid/widget/ProgressBar;Landroid/widget/TextView;J)V

    iget-object v0, p0, Lcom/estrongs/android/widget/az;->n:Lcom/estrongs/android/widget/bd;

    iget-object v1, p0, Lcom/estrongs/android/widget/az;->b:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/estrongs/android/widget/az;->d:Landroid/widget/TextView;

    iget-wide v3, p0, Lcom/estrongs/android/widget/az;->i:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/estrongs/android/widget/bd;->b(Landroid/widget/ProgressBar;Landroid/widget/TextView;J)V

    iget-wide v0, p0, Lcom/estrongs/android/widget/az;->i:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/estrongs/android/widget/az;->h:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/widget/az;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/widget/az;->f:Ljava/text/NumberFormat;

    invoke-virtual {v3, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/widget/az;->k:I

    return-void
.end method

.method public a(J)V
    .locals 4

    iput-wide p1, p0, Lcom/estrongs/android/widget/az;->h:J

    iget-wide v0, p0, Lcom/estrongs/android/widget/az;->l:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/widget/az;->l:J

    iget-object v0, p0, Lcom/estrongs/android/widget/az;->m:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Lcom/estrongs/android/widget/bc;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/az;->a:Lcom/estrongs/android/widget/bc;

    return-void
.end method

.method public a(Lcom/estrongs/android/widget/bd;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/az;->n:Lcom/estrongs/android/widget/bd;

    return-void
.end method

.method public b(J)V
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/android/widget/az;->l:J

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lcom/estrongs/android/widget/az;->i:J

    iget-wide v0, p0, Lcom/estrongs/android/widget/az;->l:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/widget/az;->l:J

    iget-object v0, p0, Lcom/estrongs/android/widget/az;->m:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/az;->a:Lcom/estrongs/android/widget/bc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/az;->a:Lcom/estrongs/android/widget/bc;

    invoke-interface {v0}, Lcom/estrongs/android/widget/bc;->a()Z

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/ui/b/ag;->onBackPressed()V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/android/widget/az;->l:J

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/estrongs/android/widget/az;->j:Ljava/lang/CharSequence;

    iget-wide v0, p0, Lcom/estrongs/android/widget/az;->l:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/widget/az;->l:J

    iget-object v0, p0, Lcom/estrongs/android/widget/az;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

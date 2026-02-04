.class public Lcom/estrongs/android/ui/c/a;
.super Lcom/estrongs/android/view/cq;


# instance fields
.field a:Z

.field public final b:Landroid/os/Handler;

.field public final c:Lcom/estrongs/a/a/h;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field private i:I

.field private j:Landroid/widget/ProgressBar;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:I

.field private n:J

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:J

.field private s:J

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/ui/c/a;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/view/cq;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    iput-boolean v1, p0, Lcom/estrongs/android/ui/c/a;->a:Z

    iput v1, p0, Lcom/estrongs/android/ui/c/a;->i:I

    new-instance v0, Lcom/estrongs/android/ui/c/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/c/b;-><init>(Lcom/estrongs/android/ui/c/a;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->b:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/ui/c/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/c/c;-><init>(Lcom/estrongs/android/ui/c/a;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->c:Lcom/estrongs/a/a/h;

    iput-wide v3, p0, Lcom/estrongs/android/ui/c/a;->n:J

    iput-wide v3, p0, Lcom/estrongs/android/ui/c/a;->o:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->t:Ljava/lang/String;

    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->d:Landroid/widget/TextView;

    const v0, 0x7f0800e4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->j:Landroid/widget/ProgressBar;

    const v0, 0x7f080136

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->e:Landroid/widget/TextView;

    const v0, 0x7f080312

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->f:Landroid/widget/TextView;

    const v0, 0x7f080313

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->g:Landroid/widget/TextView;

    const v0, 0x7f080163

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->h:Landroid/widget/TextView;

    const v0, 0x7f080311

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->l(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->k:Landroid/view/View;

    const v0, 0x7f080314

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/a;->l(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/c/a;->l:Landroid/view/View;

    if-eqz p3, :cond_0

    iput-boolean v1, p0, Lcom/estrongs/android/ui/c/a;->q:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private a(JJ)D
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0

    :cond_0
    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    goto :goto_0

    :cond_1
    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, v0

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v0, 0x2

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/a;->h()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/c/a;->q:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/c/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/a;->i()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/c/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/a;->g()V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/ui/c/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/a;->q:Z

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/c/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/c/a;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->j:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/a;->a:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/ui/c/a;->m:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/estrongs/android/ui/c/a;->m:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/c/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/a;->j()V

    return-void
.end method

.method private h()V
    .locals 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/a;->a:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a;->n:J

    invoke-static {v0, v1}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->k:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->k:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a;->n:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/16 v0, 0x64

    iput v0, p0, Lcom/estrongs/android/ui/c/a;->i:I

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->j:Landroid/widget/ProgressBar;

    iget-wide v1, p0, Lcom/estrongs/android/ui/c/a;->n:J

    long-to-int v1, v1

    iget v2, p0, Lcom/estrongs/android/ui/c/a;->i:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void

    :cond_3
    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a;->n:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/c/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/a;->k()V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/ui/c/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method private i()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->j:Landroid/widget/ProgressBar;

    iget-wide v1, p0, Lcom/estrongs/android/ui/c/a;->o:J

    long-to-int v1, v1

    iget v2, p0, Lcom/estrongs/android/ui/c/a;->i:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->f:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/a;->a:Z

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/estrongs/android/ui/c/a;->o:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->t:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    iget-wide v2, p0, Lcom/estrongs/android/ui/c/a;->o:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/estrongs/android/ui/c/a;->o:J

    iget-wide v4, p0, Lcom/estrongs/android/ui/c/a;->n:J

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/estrongs/android/ui/c/a;->a(JJ)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic j(Lcom/estrongs/android/ui/c/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method private j()V
    .locals 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/a;->a:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a;->r:J

    invoke-static {v0, v1}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->k:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->k:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a;->r:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    const/16 v0, 0x64

    iput v0, p0, Lcom/estrongs/android/ui/c/a;->i:I

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->j:Landroid/widget/ProgressBar;

    iget-wide v1, p0, Lcom/estrongs/android/ui/c/a;->r:J

    long-to-int v1, v1

    iget v2, p0, Lcom/estrongs/android/ui/c/a;->i:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void

    :cond_3
    iget-wide v0, p0, Lcom/estrongs/android/ui/c/a;->r:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private k()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->j:Landroid/widget/ProgressBar;

    iget-wide v1, p0, Lcom/estrongs/android/ui/c/a;->s:J

    long-to-int v1, v1

    iget v2, p0, Lcom/estrongs/android/ui/c/a;->i:I

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->f:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/estrongs/android/ui/c/a;->a:Z

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/estrongs/android/ui/c/a;->s:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/estrongs/android/ui/c/a;->s:J

    iget-wide v3, p0, Lcom/estrongs/android/ui/c/a;->r:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/estrongs/android/ui/c/a;->a(JJ)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-wide v2, p0, Lcom/estrongs/android/ui/c/a;->s:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f0300a4

    return v0
.end method

.method protected a(Lcom/estrongs/a/a/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/a/a/i;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    iput p1, p0, Lcom/estrongs/android/ui/c/a;->m:I

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(J)V
    .locals 2

    iput-wide p1, p0, Lcom/estrongs/android/ui/c/a;->n:J

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->b:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->b:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b(J)V
    .locals 2

    iput-wide p1, p0, Lcom/estrongs/android/ui/c/a;->o:J

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/ui/c/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->j:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method

.method public c(J)V
    .locals 2

    iput-wide p1, p0, Lcom/estrongs/android/ui/c/a;->r:J

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->b:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/c/a;->t:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->j:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public d(J)V
    .locals 2

    iput-wide p1, p0, Lcom/estrongs/android/ui/c/a;->s:J

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->b:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->j:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public e(J)V
    .locals 0

    iput-wide p1, p0, Lcom/estrongs/android/ui/c/a;->n:J

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/a;->h()V

    return-void
.end method

.method public f()V
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    iput v3, p0, Lcom/estrongs/android/ui/c/a;->m:I

    iput-wide v0, p0, Lcom/estrongs/android/ui/c/a;->n:J

    iput-wide v0, p0, Lcom/estrongs/android/ui/c/a;->o:J

    iput-object v2, p0, Lcom/estrongs/android/ui/c/a;->p:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/estrongs/android/ui/c/a;->q:Z

    iput-wide v0, p0, Lcom/estrongs/android/ui/c/a;->r:J

    iput-wide v0, p0, Lcom/estrongs/android/ui/c/a;->s:J

    iput-object v2, p0, Lcom/estrongs/android/ui/c/a;->t:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->j:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->g:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/ui/c/a;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/ui/c/a;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->e:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/ui/c/a;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/ui/c/a;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/a;->h:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/ui/c/a;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public f(J)V
    .locals 0

    iput-wide p1, p0, Lcom/estrongs/android/ui/c/a;->o:J

    invoke-direct {p0}, Lcom/estrongs/android/ui/c/a;->i()V

    return-void
.end method

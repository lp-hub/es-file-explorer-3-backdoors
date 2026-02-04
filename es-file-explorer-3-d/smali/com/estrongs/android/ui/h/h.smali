.class public Lcom/estrongs/android/ui/h/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/estrongs/android/ui/h/c;

.field private c:Lcom/estrongs/android/ui/b/ag;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/ProgressBar;

.field private j:Landroid/widget/CheckBox;

.field private k:Landroid/os/Handler;

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/ui/h/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/h/h;->l:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/h/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/ui/h/h;->b:Lcom/estrongs/android/ui/h/c;

    new-instance v0, Lcom/estrongs/android/ui/h/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/h/i;-><init>(Lcom/estrongs/android/ui/h/h;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/h/h;->k:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/estrongs/android/ui/h/h;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/h/h;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/h/h;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/h/h;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->i:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private c()V
    .locals 5

    const/16 v4, 0x8

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030034

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f08012e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/h/h;->e:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f08001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/h/h;->d:Landroid/widget/TextView;

    const v0, 0x7f08002f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/estrongs/android/ui/h/h;->b:Lcom/estrongs/android/ui/h/c;

    iget-object v3, p0, Lcom/estrongs/android/ui/h/h;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/ui/h/c;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    const v0, 0x7f08001d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/h/h;->b:Lcom/estrongs/android/ui/h/c;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/h/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080107

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/estrongs/android/ui/h/h;->b:Lcom/estrongs/android/ui/h/c;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/h/c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08012d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/h/h;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->h:Landroid/widget/Button;

    new-instance v2, Lcom/estrongs/android/ui/h/j;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/h/j;-><init>(Lcom/estrongs/android/ui/h/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080084

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/h/h;->f:Landroid/widget/TextView;

    const v0, 0x7f08012f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/ui/h/h;->g:Landroid/widget/TextView;

    const v0, 0x7f080075

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/h/h;->i:Landroid/widget/ProgressBar;

    const v0, 0x7f080088

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/estrongs/android/ui/h/h;->j:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->b:Lcom/estrongs/android/ui/h/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/h/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v2, p0, Lcom/estrongs/android/ui/h/h;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0169

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/h/l;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/h/l;-><init>(Lcom/estrongs/android/ui/h/h;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b0007

    new-instance v2, Lcom/estrongs/android/ui/h/k;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/h/k;-><init>(Lcom/estrongs/android/ui/h/h;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/h/h;->c:Lcom/estrongs/android/ui/b/ag;

    return-void

    :cond_1
    const v2, 0x7f020096

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private d()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->b:Lcom/estrongs/android/ui/h/c;

    iget-object v1, p0, Lcom/estrongs/android/ui/h/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/estrongs/android/ui/h/h;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/h/c;->a(Landroid/content/Context;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->e:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->i:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->h:Landroid/widget/Button;

    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/h/h;->l:Z

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/ui/h/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/h/h;->e()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/h/h;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->a:Landroid/content/Context;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->b:Lcom/estrongs/android/ui/h/c;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/h/c;->h()V

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->h:Landroid/widget/Button;

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/h/h;->l:Z

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/ui/h/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/h/h;->l:Z

    return v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/h/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/h/h;->d()V

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/ui/h/h;)Lcom/estrongs/android/ui/h/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->b:Lcom/estrongs/android/ui/h/c;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/h/h;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->j:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->c:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v1, p0, Lcom/estrongs/android/ui/h/h;->j:Landroid/widget/CheckBox;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/h/h;->c:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    return-void
.end method

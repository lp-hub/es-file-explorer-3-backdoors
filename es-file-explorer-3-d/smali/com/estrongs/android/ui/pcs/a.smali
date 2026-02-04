.class public Lcom/estrongs/android/ui/pcs/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/b/ag;

.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/android/ui/pcs/v;

.field private d:Landroid/content/DialogInterface$OnCancelListener;

.field private e:Lcom/estrongs/android/ui/pcs/aw;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/estrongs/android/ui/pcs/ax;

.field private i:Z

.field private j:Lcom/estrongs/android/pop/q;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/pcs/a;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/a;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->g:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/pcs/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/pcs/b;-><init>(Lcom/estrongs/android/ui/pcs/a;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->k:Landroid/os/Handler;

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/a;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/estrongs/android/ui/pcs/a;->i:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->j:Lcom/estrongs/android/pop/q;

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->e:Lcom/estrongs/android/ui/pcs/aw;

    new-instance v0, Lcom/estrongs/android/ui/pcs/ax;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/ax;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->h:Lcom/estrongs/android/ui/pcs/ax;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->h:Lcom/estrongs/android/ui/pcs/ax;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/a;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/ax;->a(Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/a;Lcom/estrongs/android/ui/pcs/v;)Lcom/estrongs/android/ui/pcs/v;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/a;->c:Lcom/estrongs/android/ui/pcs/v;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/a;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->e:Lcom/estrongs/android/ui/pcs/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->e:Lcom/estrongs/android/ui/pcs/aw;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/aw;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->e:Lcom/estrongs/android/ui/pcs/aw;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/pcs/aw;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "pcs_temp_mode"

    invoke-virtual {p0, v0, p1}, Lcom/estrongs/android/ui/pcs/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/a;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->b:Landroid/content/Context;

    const v1, 0x7f0b0480

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->c:Lcom/estrongs/android/ui/pcs/v;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->c:Lcom/estrongs/android/ui/pcs/v;

    invoke-interface {v0, v2, v1, v1}, Lcom/estrongs/android/ui/pcs/v;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/a;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/pcs/a;->f:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->j:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/a;)Lcom/estrongs/android/ui/pcs/v;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->c:Lcom/estrongs/android/ui/pcs/v;

    return-object v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b047f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/estrongs/android/ui/b/aq;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b044b

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/b/ag;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/b/ag;

    new-instance v1, Lcom/estrongs/android/ui/pcs/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/c;-><init>(Lcom/estrongs/android/ui/pcs/a;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/b/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/ui/pcs/a;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->d:Landroid/content/DialogInterface$OnCancelListener;

    return-object v0
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->h:Lcom/estrongs/android/ui/pcs/ax;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/ax;->a()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/pcs/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/a;->f:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/a;->d()V

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->d()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Press_Direct"

    const-string v2, "Press_Direct"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/a;->d:Landroid/content/DialogInterface$OnCancelListener;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/ag;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/pcs/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/a;->c:Lcom/estrongs/android/ui/pcs/v;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->j:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->af()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->c:Lcom/estrongs/android/ui/pcs/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->c:Lcom/estrongs/android/ui/pcs/v;

    invoke-interface {v0, v1, p1, p2}, Lcom/estrongs/android/ui/pcs/v;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    const-string v2, "Market"

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->bp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/estrongs/android/pop/m;->I:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/a;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    return-void
.end method

.class public Lcom/estrongs/android/ui/b/f;
.super Lcom/estrongs/android/ui/b/ag;


# instance fields
.field a:Landroid/os/Handler;

.field b:Landroid/content/pm/PackageManager;

.field protected c:Z

.field d:Lcom/estrongs/android/ui/b/i;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/b/f;->c:Z

    const v0, 0x7f0b04d2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/f;->setTitle(I)V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/b/f;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/b/f;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/f;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/f;->b:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/f;->c()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/f;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/f;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/f;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/f;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/f;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/q;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 3

    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/estrongs/android/ui/b/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/ui/b/i;-><init>(Lcom/estrongs/android/ui/b/f;Z)V

    iput-object v1, p0, Lcom/estrongs/android/ui/b/f;->d:Lcom/estrongs/android/ui/b/i;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/f;->d:Lcom/estrongs/android/ui/b/i;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private c()V
    .locals 2

    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/f;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/ui/b/g;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/g;-><init>(Lcom/estrongs/android/ui/b/f;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030004

    return v0
.end method

.method protected a(Landroid/content/Context;)V
    .locals 3

    invoke-static {p1}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/f;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/f;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/f;->b()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/b/f;->c:Z

    return-void
.end method

.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/ui/b/ag;->show()V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/f;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/b/f;->c:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/f;->c()V

    :cond_0
    return-void
.end method

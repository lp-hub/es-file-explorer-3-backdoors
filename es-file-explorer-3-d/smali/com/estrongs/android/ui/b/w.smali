.class public Lcom/estrongs/android/ui/b/w;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/android/ui/b/ag;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/b/w;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300cd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/w;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/w;->c:Landroid/view/View;

    const v1, 0x7f0803af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v1, Lcom/estrongs/android/ui/a/b;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/w;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/estrongs/android/ui/b/x;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/x;-><init>(Lcom/estrongs/android/ui/b/w;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/w;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/w;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/w;->a:Lcom/estrongs/android/ui/b/ag;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/w;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/w;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/w;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/b/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lcom/estrongs/fs/impl/i/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "fake"

    const-string v2, "/"

    invoke-static {p1, v0, v1, v2}, Lcom/estrongs/android/util/ak;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/w;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/pop/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/w;->a:Lcom/estrongs/android/ui/b/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/w;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/w;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    return-void
.end method

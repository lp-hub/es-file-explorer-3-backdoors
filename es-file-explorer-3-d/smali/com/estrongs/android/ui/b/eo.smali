.class public Lcom/estrongs/android/ui/b/eo;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/b/ag;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/b/eo;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/eo;->d()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/eo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/eo;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/eo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/eo;->c:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/b/eo;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0800f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/NaviListView;

    new-instance v2, Lcom/estrongs/android/ui/b/ep;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/b/ep;-><init>(Lcom/estrongs/android/ui/b/eo;Lcom/estrongs/android/ui/view/NaviListView;)V

    new-instance v3, Lcom/estrongs/android/ui/a/i;

    iget-object v4, p0, Lcom/estrongs/android/ui/b/eo;->b:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Lcom/estrongs/android/ui/a/i;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/view/NaviListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    new-instance v2, Lcom/estrongs/android/ui/b/eq;

    invoke-direct {v2, p0}, Lcom/estrongs/android/ui/b/eq;-><init>(Lcom/estrongs/android/ui/b/eo;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/NaviListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    new-instance v2, Lcom/estrongs/android/ui/b/et;

    invoke-direct {v2, p0, v3}, Lcom/estrongs/android/ui/b/et;-><init>(Lcom/estrongs/android/ui/b/eo;Lcom/estrongs/android/ui/a/i;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/NaviListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/eo;->b:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    const v1, 0x7f0b03f9

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/b/eo;->a:Lcom/estrongs/android/ui/b/ag;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/eo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/eo;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/eo;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/eo;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    return-void
.end method

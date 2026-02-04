.class public Lcom/estrongs/android/ui/e/w;
.super Lcom/estrongs/android/ui/e/c;


# instance fields
.field private A:[Ljava/lang/String;

.field private B:[Ljava/lang/String;

.field private C:[Ljava/lang/String;

.field private D:[Ljava/lang/String;

.field private E:Z

.field private F:Z

.field private G:Lcom/estrongs/android/ui/b/cz;

.field private H:Lcom/estrongs/android/ui/b/ag;

.field private I:Lcom/estrongs/android/ui/b/t;

.field private J:Lcom/estrongs/android/ui/b/cx;

.field private K:Lcom/estrongs/android/ui/b/ba;

.field private L:Lcom/estrongs/android/ui/b/cq;

.field private M:Lcom/estrongs/android/ui/b/w;

.field public j:Lcom/estrongs/android/ui/e/bz;

.field k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field protected l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/view/a/a;",
            ">;"
        }
    .end annotation
.end field

.field m:Z

.field private n:Lcom/estrongs/android/ui/view/az;

.field private o:Landroid/view/View;

.field private p:I

.field private q:[Ljava/lang/String;

.field private r:[Ljava/lang/String;

.field private s:[Ljava/lang/String;

.field private t:[Ljava/lang/String;

.field private u:[Ljava/lang/String;

.field private v:[Ljava/lang/String;

.field private w:[Ljava/lang/String;

.field private x:[Ljava/lang/String;

.field private y:[Ljava/lang/String;

.field private z:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/c;-><init>(Landroid/content/Context;Z)V

    iput v1, p0, Lcom/estrongs/android/ui/e/w;->p:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v1, p0, Lcom/estrongs/android/ui/e/w;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->E:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/e/w;->F:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/w;->o()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/b/ag;)Lcom/estrongs/android/ui/b/ag;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/w;->H:Lcom/estrongs/android/ui/b/ag;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/b/ba;)Lcom/estrongs/android/ui/b/ba;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/w;->K:Lcom/estrongs/android/ui/b/ba;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/b/cq;)Lcom/estrongs/android/ui/b/cq;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/w;->L:Lcom/estrongs/android/ui/b/cq;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/b/cx;)Lcom/estrongs/android/ui/b/cx;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/w;->J:Lcom/estrongs/android/ui/b/cx;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/b/cz;)Lcom/estrongs/android/ui/b/cz;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/w;->G:Lcom/estrongs/android/ui/b/cz;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/b/t;)Lcom/estrongs/android/ui/b/t;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/w;->I:Lcom/estrongs/android/ui/b/t;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/b/w;)Lcom/estrongs/android/ui/b/w;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/w;->M:Lcom/estrongs/android/ui/b/w;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/view/az;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/az;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/bt;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1, p1}, Lcom/estrongs/android/ui/pcs/bt;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/bt;->a()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/t;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->I:Lcom/estrongs/android/ui/b/t;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/cq;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->L:Lcom/estrongs/android/ui/b/cq;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/w;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->M:Lcom/estrongs/android/ui/b/w;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/ag;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->H:Lcom/estrongs/android/ui/b/ag;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/ba;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->K:Lcom/estrongs/android/ui/b/ba;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/cx;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->J:Lcom/estrongs/android/ui/b/cx;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/b/cz;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->G:Lcom/estrongs/android/ui/b/cz;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/e/w;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->y:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/e/w;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/e/w;->p:I

    return v0
.end method

.method private o()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/ca;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->m:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->f:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f02023a

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/estrongs/android/ui/view/az;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/e/w;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v2, v3, v0, v1}, Lcom/estrongs/android/ui/view/az;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;I)V

    iput-object v2, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/az;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/w;->k()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/az;

    const-string v1, "normal_mode"

    invoke-virtual {v0, v1, p0}, Lcom/estrongs/android/ui/view/az;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/az;

    const-string v1, "paste_mode"

    new-instance v2, Lcom/estrongs/android/ui/e/fy;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/az;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v5, p0, Lcom/estrongs/android/ui/e/w;->d:Z

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/ui/e/fy;-><init>(Lcom/estrongs/android/ui/view/az;Landroid/app/Activity;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/az;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x3

    goto :goto_0
.end method


# virtual methods
.method public a(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/estrongs/android/ui/e/w;->E:Z

    iput-boolean p2, p0, Lcom/estrongs/android/ui/e/w;->F:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/w;->k()V

    iget v0, p0, Lcom/estrongs/android/ui/e/w;->p:I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->d(I)V

    return-void
.end method

.method public b(Z)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/estrongs/android/view/ar;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/estrongs/android/view/ar;->R()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Z

    if-eqz v0, :cond_0

    invoke-virtual {v6}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aL(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0, v7}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->j:Lcom/estrongs/android/ui/e/bz;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/ui/e/bi;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/az;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v4, p0, Lcom/estrongs/android/ui/e/w;->d:Z

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/e/bi;-><init>(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/view/az;Landroid/app/Activity;ZLandroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->j:Lcom/estrongs/android/ui/e/bz;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/az;

    const-string v1, "edit_mode"

    iget-object v2, p0, Lcom/estrongs/android/ui/e/w;->j:Lcom/estrongs/android/ui/e/bz;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/az;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/az;

    invoke-virtual {v0, v8}, Lcom/estrongs/android/ui/view/az;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/az;

    const-string v1, "edit_mode"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/az;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v1, "edit_mode"

    iput-object v1, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->p()V

    if-eqz v6, :cond_2

    invoke-virtual {v6, v8}, Lcom/estrongs/android/view/ar;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v6}, Lcom/estrongs/android/view/ar;->d()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(II)V

    :cond_2
    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c()V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/e/w;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/az;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/view/az;->a(Z)V

    return-void
.end method

.method protected d()V
    .locals 3

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 6

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iput p1, p0, Lcom/estrongs/android/ui/e/w;->p:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->s:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    sget-boolean v0, Lcom/estrongs/android/pop/m;->n:Z

    if-eqz v0, :cond_0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "player"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->t:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "view"

    aput-object v1, v0, v5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->r:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "search"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->r:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->u:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "search"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->x:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->w:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->v:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f
    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/aw;->e()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->z:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->A:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->y:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->B:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/cs;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f:Lcom/estrongs/android/widget/ContentViewSwitcher;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/ContentViewSwitcher;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->C:[Ljava/lang/String;

    const-string v2, "unlock_page"

    iget-object v3, p0, Lcom/estrongs/android/ui/e/w;->C:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/view/cs;->n()Z

    move-result v1

    if-nez v1, :cond_3

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "back"

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lcom/estrongs/android/view/cs;->o()Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "forward"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->C:[Ljava/lang/String;

    const-string v2, "lock_page"

    iget-object v3, p0, Lcom/estrongs/android/ui/e/w;->C:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_12
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->D:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/fs/impl/k/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "clear_recycle"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_5
    .end packed-switch
.end method

.method public e(I)V
    .locals 2

    const-string v0, "edit_mode"

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/az;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/az;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->j:Lcom/estrongs/android/ui/e/bz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->j:Lcom/estrongs/android/ui/e/bz;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/e/bz;->d(I)V

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected h()V
    .locals 33

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    new-instance v2, Lcom/estrongs/android/view/a/a;

    const v3, 0x7f02027d

    const v4, 0x7f0b0025

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v3, Lcom/estrongs/android/ui/e/x;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/estrongs/android/ui/e/x;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/view/a/a;

    const v4, 0x7f020236

    const v5, 0x7f0b02a8

    invoke-direct {v3, v4, v5}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v4, Lcom/estrongs/android/ui/e/au;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/estrongs/android/ui/e/au;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v3, v4}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/view/a/a;

    const v5, 0x7f02026b

    const v6, 0x7f0b001c

    invoke-direct {v4, v5, v6}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v5, Lcom/estrongs/android/ui/e/bf;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/estrongs/android/ui/e/bf;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v4, v5}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/view/a/a;

    const v6, 0x7f020240

    const v7, 0x7f0b0325

    invoke-direct {v5, v6, v7}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v6, Lcom/estrongs/android/ui/e/bj;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/estrongs/android/ui/e/bj;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v5, v6}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/view/a/a;

    const v7, 0x7f02023c

    const v8, 0x7f0b02ab

    invoke-direct {v6, v7, v8}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v7, Lcom/estrongs/android/ui/e/bk;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/estrongs/android/ui/e/bk;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v6, v7}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v6

    new-instance v7, Lcom/estrongs/android/view/a/a;

    const v8, 0x7f02025e

    const v9, 0x7f0b003c

    invoke-direct {v7, v8, v9}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v8, Lcom/estrongs/android/ui/e/bm;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/estrongs/android/ui/e/bm;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v7, v8}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v7

    new-instance v8, Lcom/estrongs/android/view/a/a;

    const v9, 0x7f02027a

    const v10, 0x7f0b001b

    invoke-direct {v8, v9, v10}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v9, Lcom/estrongs/android/ui/e/bn;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/estrongs/android/ui/e/bn;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v8, v9}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v8

    new-instance v9, Lcom/estrongs/android/view/a/a;

    const v10, 0x7f02027a

    const v11, 0x7f0b03e7

    invoke-direct {v9, v10, v11}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v10, Lcom/estrongs/android/ui/e/bo;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/estrongs/android/ui/e/bo;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v9, v10}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v9

    new-instance v10, Lcom/estrongs/android/view/a/a;

    const v11, 0x7f020276

    const v12, 0x7f0b002a

    invoke-direct {v10, v11, v12}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v11, Lcom/estrongs/android/ui/e/bp;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/estrongs/android/ui/e/bp;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v10, v11}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v10

    new-instance v11, Lcom/estrongs/android/view/a/a;

    const v12, 0x7f020283

    const v13, 0x7f0b003a

    invoke-direct {v11, v12, v13}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v12, Lcom/estrongs/android/ui/e/y;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/estrongs/android/ui/e/y;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v11, v12}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v11

    new-instance v12, Lcom/estrongs/android/view/a/a;

    const v13, 0x7f020293

    const v14, 0x7f0b001f

    invoke-direct {v12, v13, v14}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v13, Lcom/estrongs/android/ui/e/ac;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/estrongs/android/ui/e/ac;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v12, v13}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v12

    new-instance v13, Lcom/estrongs/android/view/a/a;

    const v14, 0x7f02026e

    const v15, 0x7f0b02a9

    invoke-direct {v13, v14, v15}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v14, Lcom/estrongs/android/ui/e/af;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/estrongs/android/ui/e/af;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v13, v14}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v13

    new-instance v14, Lcom/estrongs/android/view/a/a;

    const v15, 0x7f020262

    const v16, 0x7f0b0364

    invoke-direct/range {v14 .. v16}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v15, Lcom/estrongs/android/ui/e/aj;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/estrongs/android/ui/e/aj;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v14, v15}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v14

    new-instance v15, Lcom/estrongs/android/view/a/a;

    const v16, 0x7f02026c

    const v17, 0x7f0b0238

    invoke-direct/range {v15 .. v17}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v16, Lcom/estrongs/android/ui/e/al;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/al;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v15 .. v16}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v15

    new-instance v16, Lcom/estrongs/android/view/a/a;

    const v17, 0x7f02028d

    const v18, 0x7f0b044a

    invoke-direct/range {v16 .. v18}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v17, Lcom/estrongs/android/ui/e/an;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/an;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v16 .. v17}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v16

    new-instance v17, Lcom/estrongs/android/view/a/a;

    const v18, 0x7f020242

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0b0450

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v18, Lcom/estrongs/android/ui/e/ao;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ao;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v17 .. v18}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v17

    new-instance v18, Lcom/estrongs/android/view/a/a;

    const v19, 0x7f020280

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0b047d

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v19, Lcom/estrongs/android/ui/e/ap;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ap;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v18 .. v19}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v18

    new-instance v19, Lcom/estrongs/android/view/a/a;

    const v20, 0x7f020262

    const v21, 0x7f0b04a0

    invoke-direct/range {v19 .. v21}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v20, Lcom/estrongs/android/ui/e/ar;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ar;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v19 .. v20}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v19

    new-instance v20, Lcom/estrongs/android/view/a/a;

    const v21, 0x7f020251

    const v22, 0x7f0b04b6

    invoke-direct/range {v20 .. v22}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v21, Lcom/estrongs/android/ui/e/at;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/at;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v20 .. v21}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v20

    new-instance v21, Lcom/estrongs/android/view/a/a;

    const v22, 0x7f02025d

    const v23, 0x7f0b04bf

    invoke-direct/range {v21 .. v23}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v22, Lcom/estrongs/android/ui/e/av;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/av;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v21 .. v22}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v21

    new-instance v22, Lcom/estrongs/android/view/a/a;

    const v23, 0x7f02028d

    const v24, 0x7f0b04b5

    invoke-direct/range {v22 .. v24}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v23, Lcom/estrongs/android/ui/e/aw;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/aw;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v22 .. v23}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v22

    new-instance v23, Lcom/estrongs/android/view/a/a;

    const v24, 0x7f020280

    const v25, 0x7f0b006a

    invoke-direct/range {v23 .. v25}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v24, Lcom/estrongs/android/ui/e/ax;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ax;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v23 .. v24}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v23

    new-instance v24, Lcom/estrongs/android/view/a/a;

    const v25, 0x7f02029d

    const v26, 0x7f0b02bd

    invoke-direct/range {v24 .. v26}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v25, Lcom/estrongs/android/ui/e/ay;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ay;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v24 .. v25}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v24

    new-instance v25, Lcom/estrongs/android/view/a/a;

    const v26, 0x7f020278

    const v27, 0x7f0b0021

    invoke-direct/range {v25 .. v27}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v26, Lcom/estrongs/android/ui/e/az;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/az;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v25 .. v26}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v25

    new-instance v26, Lcom/estrongs/android/view/a/a;

    const v27, 0x7f02025f

    const v28, 0x7f0b040b

    invoke-direct/range {v26 .. v28}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v27, Lcom/estrongs/android/ui/e/ba;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ba;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v26 .. v27}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v26

    new-instance v27, Lcom/estrongs/android/view/a/a;

    const v28, 0x7f020261

    const v29, 0x7f0b040d

    invoke-direct/range {v27 .. v29}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v28, Lcom/estrongs/android/ui/e/bb;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/bb;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v27 .. v28}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v27

    new-instance v28, Lcom/estrongs/android/view/a/a;

    const v29, 0x7f020291

    const v30, 0x7f0b040e

    invoke-direct/range {v28 .. v30}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v29, Lcom/estrongs/android/ui/e/bc;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/bc;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v28 .. v29}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v28

    new-instance v29, Lcom/estrongs/android/view/a/a;

    const v30, 0x7f02023d

    const v31, 0x7f0b002b

    invoke-direct/range {v29 .. v31}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v30, Lcom/estrongs/android/ui/e/bd;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/bd;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v29 .. v30}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v29

    new-instance v30, Lcom/estrongs/android/view/a/a;

    const v31, 0x7f020280

    const v32, 0x7f0b006a

    invoke-direct/range {v30 .. v32}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v31, Lcom/estrongs/android/ui/e/be;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/be;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v30 .. v31}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    move-object/from16 v30, v0

    const-string v31, "analyse"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v30, "bt_discoverable"

    move-object/from16 v0, v30

    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v5, "charset"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v5, "extract"

    invoke-interface {v3, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v5, "new"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v4, "refresh"

    invoke-interface {v3, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v4, "search"

    invoke-interface {v3, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v4, "scan"

    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v4, "select"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "sort"

    invoke-interface {v2, v3, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "view"

    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "player"

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "pcs_login"

    invoke-interface {v2, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "pcs_register"

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "pcs_directly"

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "pcs_logout"

    move-object/from16 v0, v17

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "pcs_set_path"

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "pcs_expansion"

    move-object/from16 v0, v21

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "remote_settings"

    move-object/from16 v0, v23

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "windows"

    move-object/from16 v0, v24

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "pcs_chg_account"

    move-object/from16 v0, v19

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "pcs_verify_account"

    move-object/from16 v0, v20

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "pcs_change_password"

    move-object/from16 v0, v22

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "clear_recycle"

    move-object/from16 v0, v29

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "back"

    move-object/from16 v0, v25

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "forward"

    move-object/from16 v0, v26

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "lock_page"

    move-object/from16 v0, v27

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "unlock_page"

    move-object/from16 v0, v28

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/view/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    return-object v0
.end method

.method public k()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->E:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->F:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "scan"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->r:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "player"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->s:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "sort"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->t:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "bt_discoverable"

    aput-object v1, v0, v4

    const-string v1, "scan"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->u:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "charset"

    aput-object v1, v0, v4

    const-string v1, "extract"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->v:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "analyse"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->w:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "windows"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->x:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pcs_set_path"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_verify_account"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pcs_expansion"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pcs_chg_account"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pcs_logout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->z:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pcs_set_path"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_change_password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pcs_expansion"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pcs_chg_account"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "pcs_logout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->A:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "pcs_login"

    aput-object v1, v0, v3

    const-string v1, "pcs_register"

    aput-object v1, v0, v4

    const-string v1, "pcs_directly"

    aput-object v1, v0, v5

    const-string v1, "windows"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->y:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "remote_settings"

    aput-object v1, v0, v3

    const-string v1, "windows"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->B:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "back"

    aput-object v1, v0, v3

    const-string v1, "forward"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "windows"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->C:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "clear_recycle"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->D:[Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->E:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->F:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "scan"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->r:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "player"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->s:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->t:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bt_discoverable"

    aput-object v1, v0, v3

    const-string v1, "scan"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->u:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "charset"

    aput-object v1, v0, v3

    const-string v1, "extract"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->v:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "analyse"

    aput-object v1, v0, v3

    const-string v1, "refresh"

    aput-object v1, v0, v4

    const-string v1, "sort"

    aput-object v1, v0, v5

    const-string v1, "windows"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->w:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "refresh"

    aput-object v1, v0, v4

    const-string v1, "windows"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->x:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pcs_set_path"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pcs_verify_account"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_expansion"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pcs_chg_account"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pcs_logout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->z:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pcs_set_path"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pcs_change_password"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_expansion"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pcs_chg_account"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pcs_logout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->A:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "pcs_login"

    aput-object v1, v0, v3

    const-string v1, "pcs_register"

    aput-object v1, v0, v4

    const-string v1, "pcs_directly"

    aput-object v1, v0, v5

    const-string v1, "windows"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->y:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "remote_settings"

    aput-object v1, v0, v3

    const-string v1, "windows"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->B:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "back"

    aput-object v1, v0, v3

    const-string v1, "forward"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "windows"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->C:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "clear_recycle"

    aput-object v1, v0, v3

    const-string v1, "refresh"

    aput-object v1, v0, v4

    const-string v1, "view"

    aput-object v1, v0, v5

    const-string v1, "windows"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->D:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->E:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->F:Z

    if-nez v0, :cond_2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "scan"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->r:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "player"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->s:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "sort"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->t:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "bt_discoverable"

    aput-object v1, v0, v4

    const-string v1, "scan"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->u:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "charset"

    aput-object v1, v0, v4

    const-string v1, "extract"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->v:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "analyse"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->w:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->x:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pcs_set_path"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pcs_verify_account"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_expansion"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pcs_chg_account"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pcs_logout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->z:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pcs_set_path"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pcs_change_password"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_expansion"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pcs_chg_account"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pcs_logout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->A:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "pcs_login"

    aput-object v1, v0, v3

    const-string v1, "pcs_register"

    aput-object v1, v0, v4

    const-string v1, "pcs_directly"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->y:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "remote_settings"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->B:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "back"

    aput-object v1, v0, v3

    const-string v1, "forward"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->C:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "clear_recycle"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->D:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "scan"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->r:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "player"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->s:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->t:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bt_discoverable"

    aput-object v1, v0, v3

    const-string v1, "scan"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->u:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "charset"

    aput-object v1, v0, v3

    const-string v1, "extract"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->v:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "analyse"

    aput-object v1, v0, v3

    const-string v1, "refresh"

    aput-object v1, v0, v4

    const-string v1, "sort"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->w:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "refresh"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->x:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pcs_set_path"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pcs_verify_account"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_expansion"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pcs_chg_account"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pcs_logout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->z:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pcs_set_path"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pcs_change_password"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_expansion"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pcs_chg_account"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pcs_logout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->A:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "pcs_login"

    aput-object v1, v0, v3

    const-string v1, "pcs_register"

    aput-object v1, v0, v4

    const-string v1, "pcs_directly"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->y:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "remote_settings"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->B:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "back"

    aput-object v1, v0, v3

    const-string v1, "forward"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->C:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "clear_recycle"

    aput-object v1, v0, v3

    const-string v1, "refresh"

    aput-object v1, v0, v4

    const-string v1, "view"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->D:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public l()Lcom/estrongs/android/ui/view/az;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/az;

    return-object v0
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->j:Lcom/estrongs/android/ui/e/bz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->j:Lcom/estrongs/android/ui/e/bz;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/bz;->j()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b(Z)V

    return-void
.end method

.class public Lcom/estrongs/android/view/e;
.super Lcom/estrongs/android/view/ar;


# instance fields
.field public a:Ljava/lang/String;

.field private ac:Lcom/estrongs/io/archive/h;

.field private ah:Z

.field private ai:I

.field private aj:Ljava/lang/String;

.field private ak:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private al:Ljava/lang/String;

.field private am:Landroid/os/Handler;

.field private an:Ljava/io/File;

.field private ao:Lcom/estrongs/android/widget/bp;

.field private ap:Lcom/estrongs/android/pop/app/compress/an;

.field private aq:Landroid/util/SparseBooleanArray;

.field private ar:Lcom/estrongs/android/pop/app/compress/as;

.field private as:Lcom/estrongs/android/view/m;

.field public b:Ljava/lang/String;

.field protected c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/view/ar;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;ZZ)V

    iput-object v7, p0, Lcom/estrongs/android/view/e;->ac:Lcom/estrongs/io/archive/h;

    iput-object v7, p0, Lcom/estrongs/android/view/e;->a:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/estrongs/android/view/e;->ah:Z

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/view/e;->ak:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/view/e;->al:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/util/g;->a:[Ljava/lang/String;

    aget-object v0, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/view/e;->b:Ljava/lang/String;

    iput-object v7, p0, Lcom/estrongs/android/view/e;->ao:Lcom/estrongs/android/widget/bp;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/e;->aq:Landroid/util/SparseBooleanArray;

    iput-boolean v6, p0, Lcom/estrongs/android/view/e;->c:Z

    iput-object v7, p0, Lcom/estrongs/android/view/e;->as:Lcom/estrongs/android/view/m;

    new-instance v0, Lcom/estrongs/android/view/f;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/f;-><init>(Lcom/estrongs/android/view/e;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/e;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/estrongs/android/view/g;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/g;-><init>(Lcom/estrongs/android/view/e;)V

    iput-object v0, p0, Lcom/estrongs/android/view/e;->am:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/view/h;

    iget-object v1, p0, Lcom/estrongs/android/view/e;->ad:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/view/h;-><init>(Lcom/estrongs/android/view/e;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/view/e;->ao:Lcom/estrongs/android/widget/bp;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/e;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/e;->ai:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/e;)Lcom/estrongs/android/pop/app/compress/an;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ap:Lcom/estrongs/android/pop/app/compress/an;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/e;Lcom/estrongs/io/archive/h;)Lcom/estrongs/io/archive/h;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/e;->ac:Lcom/estrongs/io/archive/h;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/e;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/e;->an:Ljava/io/File;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/e;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/view/e;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/e;->ah:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/view/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/e;->al:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/view/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/e;->aj:Ljava/lang/String;

    return-object p1
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const v3, 0x7f0b01c1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/av;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ad:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/utils/AppRunner;->s(Landroid/app/Activity;Ljava/lang/String;)Lcom/estrongs/android/ui/b/ag;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/e;->ad:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ad:Landroid/app/Activity;

    const v1, 0x7f0b01c1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/e;->n(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Landroid/content/ActivityNotFoundException;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ad:Landroid/app/Activity;

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/e;->n(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/av;->G(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/e;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/view/e;->ad:Landroid/app/Activity;

    invoke-static {v1, v0, p1}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/view/e;->ad:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0210

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/e;->n(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private b(Ljava/util/List;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/compress/l;

    iget-object v1, p0, Lcom/estrongs/android/view/e;->ad:Landroid/app/Activity;

    iget-object v3, p0, Lcom/estrongs/android/view/e;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/estrongs/android/view/e;->aj:Ljava/lang/String;

    const/4 v8, 0x1

    iget v9, p0, Lcom/estrongs/android/view/e;->ai:I

    move v7, p2

    move-object v10, v5

    invoke-direct/range {v0 .. v10}, Lcom/estrongs/android/pop/app/compress/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZILandroid/content/DialogInterface$OnDismissListener;)V

    new-instance v1, Lcom/estrongs/android/view/l;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/l;-><init>(Lcom/estrongs/android/view/e;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/am;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/l;->b()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/view/e;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ak:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/view/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/e;->q()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/view/e;)Lcom/estrongs/io/archive/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ac:Lcom/estrongs/io/archive/h;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/view/e;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/e;->am:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/view/e;)Lcom/estrongs/android/pop/app/compress/as;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ar:Lcom/estrongs/android/pop/app/compress/as;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/view/e;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/e;->ai:I

    return v0
.end method

.method private q()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ac:Lcom/estrongs/io/archive/h;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zip/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/e;->ac:Lcom/estrongs/io/archive/h;

    invoke-virtual {v1}, Lcom/estrongs/io/archive/h;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->bl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/c/d;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/c/d;->a(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method private r()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ak:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/e;->ak:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/estrongs/android/view/e;->q()V

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isTmpFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    iget-boolean v0, p0, Lcom/estrongs/android/view/e;->c:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/view/e;->n()V

    goto :goto_1
.end method


# virtual methods
.method protected a(Lcom/estrongs/fs/g;Landroid/view/View;IJ)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    check-cast p1, Lcom/estrongs/fs/impl/e/a;

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/e/a;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/estrongs/android/view/e;->an:Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/android/view/e;->g()V

    iget-object v0, p0, Lcom/estrongs/android/view/e;->z:Lcom/estrongs/android/view/br;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/e;->z:Lcom/estrongs/android/view/br;

    invoke-virtual {p0}, Lcom/estrongs/android/view/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/estrongs/android/view/br;->a(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/av;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ad:Landroid/app/Activity;

    const v1, 0x7f0b0213

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/e;->n(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/e;->ak:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_7

    iput-object v2, p0, Lcom/estrongs/android/view/e;->al:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ap:Lcom/estrongs/android/pop/app/compress/an;

    if-nez v0, :cond_3

    new-instance v0, Lcom/estrongs/android/pop/app/compress/an;

    iget-object v2, p0, Lcom/estrongs/android/view/e;->ad:Landroid/app/Activity;

    iget-object v3, p0, Lcom/estrongs/android/view/e;->am:Landroid/os/Handler;

    iget-object v4, p0, Lcom/estrongs/android/view/e;->ac:Lcom/estrongs/io/archive/h;

    invoke-direct {v0, v2, v3, v4}, Lcom/estrongs/android/pop/app/compress/an;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/estrongs/io/archive/h;)V

    iput-object v0, p0, Lcom/estrongs/android/view/e;->ap:Lcom/estrongs/android/pop/app/compress/an;

    :cond_3
    move-object v0, v1

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    iget-object v1, p0, Lcom/estrongs/android/view/e;->ap:Lcom/estrongs/android/pop/app/compress/an;

    iget-object v2, p0, Lcom/estrongs/android/view/e;->al:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/compress/an;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/view/e;->ap:Lcom/estrongs/android/pop/app/compress/an;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/compress/an;->a(Lcom/estrongs/io/model/ArchiveEntryFile;)V

    iget-object v1, p0, Lcom/estrongs/android/view/e;->ar:Lcom/estrongs/android/pop/app/compress/as;

    if-nez v1, :cond_4

    new-instance v1, Lcom/estrongs/android/pop/app/compress/as;

    iget-object v2, p0, Lcom/estrongs/android/view/e;->ad:Landroid/app/Activity;

    invoke-direct {v1, v2, v5, v6}, Lcom/estrongs/android/pop/app/compress/as;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/estrongs/android/view/e;->ar:Lcom/estrongs/android/pop/app/compress/as;

    iget-object v1, p0, Lcom/estrongs/android/view/e;->ar:Lcom/estrongs/android/pop/app/compress/as;

    const/4 v2, -0x1

    const v3, 0x7f0b0006

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/e;->m(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/view/i;

    invoke-direct {v4, p0}, Lcom/estrongs/android/view/i;-><init>(Lcom/estrongs/android/view/e;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/android/pop/app/compress/as;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/estrongs/android/view/e;->ar:Lcom/estrongs/android/pop/app/compress/as;

    const/4 v2, -0x2

    const v3, 0x7f0b0007

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/e;->m(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/view/j;

    invoke-direct {v4, p0}, Lcom/estrongs/android/view/j;-><init>(Lcom/estrongs/android/view/e;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/android/pop/app/compress/as;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_4
    invoke-virtual {v0}, Lcom/estrongs/io/model/ArchiveEntryFile;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ap:Lcom/estrongs/android/pop/app/compress/an;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/an;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ar:Lcom/estrongs/android/pop/app/compress/as;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/as;->b()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/view/e;->ar:Lcom/estrongs/android/pop/app/compress/as;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/as;->show()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/view/e;->ap:Lcom/estrongs/android/pop/app/compress/an;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/an;->show()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/e;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ap:Lcom/estrongs/android/pop/app/compress/an;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/e;->ap:Lcom/estrongs/android/pop/app/compress/an;

    :cond_0
    iput-object p1, p0, Lcom/estrongs/android/view/e;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/view/e;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/e;->z:Lcom/estrongs/android/view/br;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/e;->z:Lcom/estrongs/android/view/br;

    invoke-virtual {p0}, Lcom/estrongs/android/view/e;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/view/br;->a(Ljava/lang/String;Z)V

    :cond_1
    const v0, 0x7f0b01c2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/e;->n(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/e;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/e;->as:Lcom/estrongs/android/view/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/e;->as:Lcom/estrongs/android/view/m;

    invoke-virtual {v0}, Lcom/estrongs/android/view/m;->a()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/e;->ac:Lcom/estrongs/io/archive/h;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/estrongs/android/view/e;->r()V

    :cond_3
    new-instance v0, Lcom/estrongs/android/view/m;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/m;-><init>(Lcom/estrongs/android/view/e;)V

    iput-object v0, p0, Lcom/estrongs/android/view/e;->as:Lcom/estrongs/android/view/m;

    iget-object v0, p0, Lcom/estrongs/android/view/e;->as:Lcom/estrongs/android/view/m;

    invoke-virtual {v0}, Lcom/estrongs/android/view/m;->start()V

    return-void
.end method

.method protected a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)V"
        }
    .end annotation

    const/16 v1, 0xc8

    invoke-virtual {p0}, Lcom/estrongs/android/view/e;->u()V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/e;->c(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/view/e;->B:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/view/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aU(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0b0198

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/e;->f(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0b01ee

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/e;->f(I)V

    goto :goto_0

    :cond_1
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f0b01ed

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/e;->f(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0b01ec

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/e;->f(I)V

    goto :goto_0

    :cond_3
    if-ge v0, v1, :cond_4

    :goto_1
    iput v0, p0, Lcom/estrongs/android/view/e;->T:I

    iget-object v0, p0, Lcom/estrongs/android/view/e;->B:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/e;->b(Ljava/util/List;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public a(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/estrongs/android/view/e;->w()Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/view/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lcom/estrongs/android/view/e;->ah:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/view/e;->b(Ljava/util/List;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/compress/a;

    iget-object v1, p0, Lcom/estrongs/android/view/e;->ad:Landroid/app/Activity;

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/estrongs/android/view/e;->b:Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Lcom/estrongs/android/view/k;

    invoke-direct {v6, p0, v3, p1, p2}, Lcom/estrongs/android/view/k;-><init>(Lcom/estrongs/android/view/e;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/app/compress/a;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/estrongs/android/pop/app/compress/j;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/a;->a()V

    goto :goto_0
.end method

.method public a_()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/e;->r()V

    invoke-super {p0}, Lcom/estrongs/android/view/ar;->a_()V

    return-void
.end method

.method public b(Z)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/view/e;->an:Ljava/io/File;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/e;->an:Ljava/io/File;

    if-eqz v0, :cond_1

    const-string v0, "/"

    iget-object v1, p0, Lcom/estrongs/android/view/e;->an:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/view/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/e;->an:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/estrongs/android/view/e;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/e;->aq:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/view/e;->B:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/view/e;->an:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    new-instance v5, Lcom/estrongs/fs/impl/e/a;

    invoke-direct {v5, v4}, Lcom/estrongs/fs/impl/e/a;-><init>(Ljava/io/File;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/e;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/estrongs/android/view/e;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/estrongs/android/view/e;->u()V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/e;->w:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/e;->b(Z)V

    return-void
.end method

.method public j()Lcom/estrongs/fs/g;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/e;->an:Ljava/io/File;

    if-eqz v0, :cond_0

    const-string v0, "/"

    iget-object v1, p0, Lcom/estrongs/android/view/e;->an:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/e;->an:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/e;->an:Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/android/view/e;->g()V

    iget-object v0, p0, Lcom/estrongs/android/view/e;->z:Lcom/estrongs/android/view/br;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/e;->z:Lcom/estrongs/android/view/br;

    invoke-virtual {p0}, Lcom/estrongs/android/view/e;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/view/br;->a(Ljava/lang/String;Z)V

    :cond_2
    new-instance v0, Lcom/estrongs/fs/impl/e/a;

    iget-object v1, p0, Lcom/estrongs/android/view/e;->an:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/e/a;-><init>(Ljava/io/File;)V

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/e;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected n()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ac:Lcom/estrongs/io/archive/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ac:Lcom/estrongs/io/archive/h;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->d()V

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ac:Lcom/estrongs/io/archive/h;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->g()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/e;->ac:Lcom/estrongs/io/archive/h;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/h;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public o()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/e;->an:Ljava/io/File;

    return-object v0
.end method

.method public p()Lcom/estrongs/io/archive/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/e;->ac:Lcom/estrongs/io/archive/h;

    return-object v0
.end method

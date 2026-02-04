.class public Lcom/estrongs/android/pop/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/a;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/g;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/g;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/g;->a:Landroid/app/Activity;

    return-object v0
.end method

.method private a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/e;)Lcom/estrongs/android/ui/b/ag;
    .locals 7

    const/4 v5, 0x1

    iget-object v0, p2, Lcom/estrongs/a/a/e;->c:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/estrongs/a/a/e;->d:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/estrongs/android/a/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/g;->a:Landroid/app/Activity;

    new-instance v2, Lcom/estrongs/android/pop/k;

    invoke-direct {v2, p0, p2, p1}, Lcom/estrongs/android/pop/k;-><init>(Lcom/estrongs/android/pop/g;Lcom/estrongs/a/a/e;Lcom/estrongs/a/a;)V

    invoke-direct {v0, v1, v2, v5}, Lcom/estrongs/android/a/e;-><init>(Landroid/content/Context;Lcom/estrongs/android/a/h;Z)V

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p1, Lcom/estrongs/fs/b/i;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/estrongs/fs/b/i;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/i;->e()Z

    move-result v6

    :goto_1
    new-instance v0, Lcom/estrongs/android/a/i;

    iget-object v1, p0, Lcom/estrongs/android/pop/g;->a:Landroid/app/Activity;

    iget-object v2, p2, Lcom/estrongs/a/a/e;->c:Lcom/estrongs/fs/g;

    iget-object v3, p2, Lcom/estrongs/a/a/e;->d:Lcom/estrongs/fs/g;

    new-instance v4, Lcom/estrongs/android/pop/l;

    invoke-direct {v4, p0, p2, p1}, Lcom/estrongs/android/pop/l;-><init>(Lcom/estrongs/android/pop/g;Lcom/estrongs/a/a/e;Lcom/estrongs/a/a;)V

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/a/i;-><init>(Landroid/content/Context;Lcom/estrongs/fs/g;Lcom/estrongs/fs/g;Lcom/estrongs/android/a/o;ZZ)V

    goto :goto_0

    :cond_2
    move v6, v5

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/g;Lcom/estrongs/a/a;Lcom/estrongs/a/a/e;)Lcom/estrongs/android/ui/b/ag;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/g;->a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/e;)Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/g;->a:Landroid/app/Activity;

    return-void
.end method

.method public a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/c;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/g;->a:Landroid/app/Activity;

    new-instance v1, Lcom/estrongs/android/pop/h;

    invoke-direct {v1, p0, p2, p1}, Lcom/estrongs/android/pop/h;-><init>(Lcom/estrongs/android/pop/g;Lcom/estrongs/a/a/c;Lcom/estrongs/a/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

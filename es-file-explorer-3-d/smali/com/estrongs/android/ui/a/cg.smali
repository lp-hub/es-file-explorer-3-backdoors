.class public Lcom/estrongs/android/ui/a/cg;
.super Lcom/estrongs/android/util/ay;


# instance fields
.field private g:Lcom/estrongs/android/ui/h/c;

.field private h:I


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/h/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/util/ay;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/estrongs/android/ui/a/cg;->h:I

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/cg;->a(Lcom/estrongs/android/ui/h/a;)Lcom/estrongs/android/ui/h/c;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/a/cg;)Lcom/estrongs/android/ui/h/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cg;->g:Lcom/estrongs/android/ui/h/c;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/h/a;)Lcom/estrongs/android/ui/h/c;
    .locals 5

    const-wide/16 v3, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/a/cg;->g:Lcom/estrongs/android/ui/h/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cg;->g:Lcom/estrongs/android/ui/h/c;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/a/cg;->h:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/estrongs/android/util/ak;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/c/d;->k(Ljava/lang/String;)[J

    move-result-object v0

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal storage size!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    :try_start_1
    aget-wide v1, v0, v1

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    div-long v0, v1, v3

    long-to-int v0, v0

    iput v0, p0, Lcom/estrongs/android/ui/a/cg;->h:I

    :cond_4
    iget v0, p0, Lcom/estrongs/android/ui/a/cg;->h:I

    invoke-virtual {p1, v0}, Lcom/estrongs/android/ui/h/a;->a(I)Lcom/estrongs/android/ui/h/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/cg;->g:Lcom/estrongs/android/ui/h/c;

    iget-object v0, p0, Lcom/estrongs/android/ui/a/cg;->g:Lcom/estrongs/android/ui/h/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public b(Lcom/estrongs/android/ui/h/a;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/cg;->g:Lcom/estrongs/android/ui/h/c;

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/a/cg;->a(Lcom/estrongs/android/ui/h/a;)Lcom/estrongs/android/ui/h/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/a/cg;->g:Lcom/estrongs/android/ui/h/c;

    return-void
.end method

.class public Lcom/estrongs/fs/impl/b/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/b/g;->a:Z

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/b/g;->i:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/impl/b/g;->a:Z

    iput-object p1, p0, Lcom/estrongs/fs/impl/b/g;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/fs/impl/b/g;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/fs/impl/b/g;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/estrongs/fs/impl/b/g;->e:Ljava/lang/String;

    iput-wide p6, p0, Lcom/estrongs/fs/impl/b/g;->f:J

    iput-wide p8, p0, Lcom/estrongs/fs/impl/b/g;->g:J

    iput-object p10, p0, Lcom/estrongs/fs/impl/b/g;->h:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/estrongs/fs/impl/b/g;->i:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/b/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/b/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/b/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/b/g;->f:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/b/g;->g:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/b/g;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/impl/b/g;->i:Z

    return v0
.end method

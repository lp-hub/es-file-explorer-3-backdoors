.class public Lcom/estrongs/fs/impl/local/r;
.super Lcom/estrongs/fs/a;


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/estrongs/fs/impl/local/r;->isLink:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/local/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/estrongs/fs/impl/local/r;->a:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/local/r;->c:Ljava/lang/String;

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/estrongs/fs/impl/local/r;->b:J

    return-void
.end method

.method protected doGetFileType()Lcom/estrongs/fs/l;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public lastModified()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/local/r;->a:J

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/fs/impl/local/r;->b:J

    return-wide v0
.end method

.method public setFileType(Lcom/estrongs/fs/l;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/local/r;->type:Lcom/estrongs/fs/l;

    return-void
.end method

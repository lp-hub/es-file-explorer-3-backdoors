.class public Lcom/estrongs/fs/impl/d/a;
.super Lcom/estrongs/fs/a;


# instance fields
.field private a:Lcom/estrongs/fs/g;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/g;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "book://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/fs/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/impl/d/a;->a:Lcom/estrongs/fs/g;

    iput-object p1, p0, Lcom/estrongs/fs/impl/d/a;->a:Lcom/estrongs/fs/g;

    invoke-interface {p1}, Lcom/estrongs/fs/g;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/impl/d/a;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doGetFileType()Lcom/estrongs/fs/l;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/d/a;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/l;->a:Lcom/estrongs/fs/l;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/fs/l;->b:Lcom/estrongs/fs/l;

    goto :goto_0
.end method

.method public exists()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/d/a;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->exists()Z

    move-result v0

    return v0
.end method

.method public lastModified()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/d/a;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .locals 2

    iget-object v0, p0, Lcom/estrongs/fs/impl/d/a;->a:Lcom/estrongs/fs/g;

    invoke-interface {v0}, Lcom/estrongs/fs/g;->length()J

    move-result-wide v0

    return-wide v0
.end method

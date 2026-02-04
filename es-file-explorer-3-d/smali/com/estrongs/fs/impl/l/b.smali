.class public Lcom/estrongs/fs/impl/l/b;
.super Lcom/estrongs/fs/m;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/estrongs/fs/l;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/fs/m;-><init>(Ljava/lang/String;Lcom/estrongs/fs/l;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/impl/l/b;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public setAbsolutePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/l/b;->absolutePath:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/l/b;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/fs/impl/l/b;->path:Ljava/lang/String;

    return-void
.end method

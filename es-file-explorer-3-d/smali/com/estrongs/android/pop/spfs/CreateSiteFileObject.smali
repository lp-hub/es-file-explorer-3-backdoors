.class public Lcom/estrongs/android/pop/spfs/CreateSiteFileObject;
.super Lcom/estrongs/fs/impl/l/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SP://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/l;->L:Lcom/estrongs/fs/l;

    invoke-virtual {v1}, Lcom/estrongs/fs/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/estrongs/fs/l;->L:Lcom/estrongs/fs/l;

    invoke-direct {p0, v0, v1, p1}, Lcom/estrongs/fs/impl/l/b;-><init>(Ljava/lang/String;Lcom/estrongs/fs/l;Ljava/lang/String;)V

    return-void
.end method

.class public Lcom/estrongs/fs/impl/pcs/b;
.super Lcom/estrongs/fs/m;


# static fields
.field private static a:Lcom/estrongs/fs/impl/pcs/b;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/estrongs/fs/l;->O:Lcom/estrongs/fs/l;

    const-string v2, "\u7f51\u7edc\u786c\u76d8"

    invoke-direct {p0, v0, v1, v2}, Lcom/estrongs/fs/m;-><init>(Ljava/lang/String;Lcom/estrongs/fs/l;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/estrongs/fs/impl/pcs/b;->b()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/impl/pcs/b;->lastModified:J

    return-void
.end method

.method public static a()Lcom/estrongs/fs/impl/pcs/b;
    .locals 1

    sget-object v0, Lcom/estrongs/fs/impl/pcs/b;->a:Lcom/estrongs/fs/impl/pcs/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/impl/pcs/b;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/pcs/b;-><init>()V

    sput-object v0, Lcom/estrongs/fs/impl/pcs/b;->a:Lcom/estrongs/fs/impl/pcs/b;

    :cond_0
    sget-object v0, Lcom/estrongs/fs/impl/pcs/b;->a:Lcom/estrongs/fs/impl/pcs/b;

    invoke-direct {v0}, Lcom/estrongs/fs/impl/pcs/b;->b()V

    sget-object v0, Lcom/estrongs/fs/impl/pcs/b;->a:Lcom/estrongs/fs/impl/pcs/b;

    return-object v0
.end method

.method private b()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/ak;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/m;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/impl/pcs/b;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/fs/m;->absolutePath:Ljava/lang/String;

    return-void
.end method

.class public abstract Lcom/estrongs/android/pop/app/editor/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)Lcom/estrongs/android/pop/app/editor/a;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/estrongs/fs/impl/local/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/estrongs/android/pop/app/editor/d;

    invoke-direct {v0, p1}, Lcom/estrongs/android/pop/app/editor/d;-><init>(Ljava/io/File;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/estrongs/android/pop/app/editor/am;

    invoke-direct {v0, p1}, Lcom/estrongs/android/pop/app/editor/am;-><init>(Ljava/io/File;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aO(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/estrongs/android/util/ak;->aZ(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public abstract a([BII)I
.end method

.method public abstract a()J
.end method

.method public abstract a(J)V
.end method

.method public abstract a(Ljava/io/File;)Z
.end method

.method public abstract b()Z
.end method

.method public abstract c()J
.end method

.method public abstract d()V
.end method

.method public abstract e()Ljava/io/InputStream;
.end method

.method public abstract f()Ljava/io/OutputStream;
.end method

.method public abstract g()Z
.end method

.method public abstract h()Ljava/lang/String;
.end method

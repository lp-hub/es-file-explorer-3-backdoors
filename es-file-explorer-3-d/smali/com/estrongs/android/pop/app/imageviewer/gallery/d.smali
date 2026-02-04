.class public Lcom/estrongs/android/pop/app/imageviewer/gallery/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/imageviewer/gallery/f;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/imageviewer/gallery/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/estrongs/fs/d;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/h;Lcom/estrongs/fs/c/a/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->a:Ljava/util/List;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->b:Lcom/estrongs/fs/d;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/h;Lcom/estrongs/fs/c/a/a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/h;Lcom/estrongs/fs/c/a/a;)V
    .locals 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ak;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    :goto_0
    invoke-static {p2}, Lcom/estrongs/android/util/ak;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-nez p3, :cond_4

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aK(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-virtual {v3, v4, v2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    :goto_1
    move-object v2, v0

    :goto_2
    if-nez v2, :cond_7

    :cond_3
    return-void

    :cond_4
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v5

    new-instance v6, Lcom/estrongs/fs/m;

    sget-object v7, Lcom/estrongs/fs/l;->a:Lcom/estrongs/fs/l;

    const/4 v8, 0x0

    invoke-direct {v6, v4, v3, v7, v8}, Lcom/estrongs/fs/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/fs/l;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aP(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v4}, Lcom/estrongs/android/util/ak;->aK(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v2, v1

    :cond_6
    invoke-virtual {v5, v6, v2, p3}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/g;ZLcom/estrongs/fs/h;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v2, v0

    goto :goto_2

    :cond_7
    invoke-static {v2, p4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/g;

    if-nez v0, :cond_9

    :cond_8
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_9
    invoke-interface {v0}, Lcom/estrongs/fs/g;->getFileType()Lcom/estrongs/fs/l;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/estrongs/fs/l;->a()Z

    move-result v3

    if-nez v3, :cond_8

    :cond_a
    invoke-interface {v0}, Lcom/estrongs/fs/g;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/estrongs/android/util/av;->b(Lcom/estrongs/fs/g;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {v3, p1}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_b
    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->a:Ljava/util/List;

    new-instance v4, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    iget-object v5, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->b:Lcom/estrongs/fs/d;

    invoke-direct {v4, p0, v5, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;-><init>(Lcom/estrongs/android/pop/app/imageviewer/gallery/f;Lcom/estrongs/fs/d;Lcom/estrongs/fs/g;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    move-object v4, v3

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;
    .locals 6

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "search"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Ljava/lang/String;

    move-result-object v2

    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "file://"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    return-object v1

    :cond_1
    const-string v0, "search"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a()Lcom/estrongs/fs/g;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a()Lcom/estrongs/fs/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/fs/g;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v2, v0

    move-object v0, v3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v3, v0

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    move-object v0, v2

    goto :goto_3
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->b(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a()Lcom/estrongs/fs/g;

    move-result-object v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->b:Lcom/estrongs/fs/d;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/estrongs/fs/d;->j(Ljava/lang/String;)Lcom/estrongs/fs/g;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v0, Lcom/estrongs/fs/b/o;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->b:Lcom/estrongs/fs/d;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v5

    invoke-virtual {v5}, Lcom/estrongs/android/pop/q;->aD()Z

    move-result v5

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/estrongs/fs/b/o;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;ZZ)V

    invoke-virtual {v0, v2}, Lcom/estrongs/fs/b/o;->execute(Z)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/o;->getTaskStatus()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/gallery/d;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/c;->a()Lcom/estrongs/fs/g;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

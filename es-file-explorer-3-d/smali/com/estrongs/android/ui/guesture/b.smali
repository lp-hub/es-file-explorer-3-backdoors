.class public Lcom/estrongs/android/ui/guesture/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Landroid/gesture/GestureStore;

.field private static c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Z

.field private static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/gesture/GestureStore;

    invoke-direct {v0}, Landroid/gesture/GestureStore;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/guesture/b;->b:Landroid/gesture/GestureStore;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/guesture/b;->c:Ljava/util/HashSet;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/estrongs/android/ui/guesture/b;->a:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/ui/guesture/b;->d:Z

    return-void
.end method

.method public static a(Landroid/gesture/Gesture;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    sget-boolean v0, Lcom/estrongs/android/ui/guesture/b;->a:Z

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/estrongs/android/ui/guesture/b;->b:Landroid/gesture/GestureStore;

    invoke-virtual {v0, p0}, Landroid/gesture/GestureStore;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    iget-wide v4, v0, Landroid/gesture/Prediction;->score:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    iget-wide v4, v0, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_5

    move-object v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    iget-object v0, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    sget-object v4, Lcom/estrongs/android/ui/guesture/b;->c:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_6
    move-object v0, v2

    goto :goto_0
.end method

.method public static a()V
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    sget-boolean v1, Lcom/estrongs/android/ui/guesture/b;->d:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->al()Z

    move-result v1

    sput-boolean v1, Lcom/estrongs/android/ui/guesture/b;->a:Z

    sget-object v1, Lcom/estrongs/android/ui/guesture/b;->c:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    const-string v2, "/sdcard/.estrongs/gestures"

    invoke-static {v1, v2}, Lcom/estrongs/fs/impl/local/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    sget-object v0, Lcom/estrongs/android/ui/guesture/b;->b:Landroid/gesture/GestureStore;

    invoke-virtual {v0, v1}, Landroid/gesture/GestureStore;->load(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/guesture/b;->e:Ljava/util/List;

    sget-object v0, Lcom/estrongs/android/ui/guesture/b;->b:Landroid/gesture/GestureStore;

    invoke-virtual {v0}, Landroid/gesture/GestureStore;->getGestureEntries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/estrongs/android/ui/guesture/b;->e:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_3
    sput-boolean v4, Lcom/estrongs/android/ui/guesture/b;->d:Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    :goto_4
    sput-boolean v4, Lcom/estrongs/android/ui/guesture/b;->d:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_5
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_6
    sput-boolean v4, Lcom/estrongs/android/ui/guesture/b;->d:Z

    throw v0

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/estrongs/android/ui/guesture/b;->b:Landroid/gesture/GestureStore;

    invoke-virtual {v0, p0}, Landroid/gesture/GestureStore;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v2, Lcom/estrongs/android/ui/guesture/b;->b:Landroid/gesture/GestureStore;

    invoke-virtual {v2, p0}, Landroid/gesture/GestureStore;->removeEntry(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/ui/guesture/b;->d()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/estrongs/android/ui/guesture/b;->b:Landroid/gesture/GestureStore;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Gesture;

    invoke-virtual {v2, p0, v0}, Landroid/gesture/GestureStore;->addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/gesture/Gesture;)Z
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/guesture/b;->b:Landroid/gesture/GestureStore;

    invoke-virtual {v0, p0}, Landroid/gesture/GestureStore;->removeEntry(Ljava/lang/String;)V

    sget-object v0, Lcom/estrongs/android/ui/guesture/b;->b:Landroid/gesture/GestureStore;

    invoke-virtual {v0, p0, p1}, Landroid/gesture/GestureStore;->addGesture(Ljava/lang/String;Landroid/gesture/Gesture;)V

    invoke-static {p0}, Lcom/estrongs/android/ui/guesture/b;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/ui/guesture/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/guesture/b;->b:Landroid/gesture/GestureStore;

    invoke-virtual {v0, p0}, Landroid/gesture/GestureStore;->removeEntry(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/estrongs/android/ui/guesture/b;->e:Ljava/util/List;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/guesture/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Ljava/lang/String;)Landroid/gesture/Gesture;
    .locals 2

    sget-object v0, Lcom/estrongs/android/ui/guesture/b;->b:Landroid/gesture/GestureStore;

    invoke-virtual {v0, p0}, Landroid/gesture/GestureStore;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Gesture;

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/estrongs/android/pop/m;->M:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/estrongs/android/ui/guesture/b;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/.estrongs"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v0, "/sdcard/.estrongs/gestures"

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/d;->f(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    sget-object v0, Lcom/estrongs/android/ui/guesture/b;->b:Landroid/gesture/GestureStore;

    invoke-virtual {v0, v2}, Landroid/gesture/GestureStore;->save(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/guesture/b;->e:Ljava/util/List;

    sget-object v0, Lcom/estrongs/android/ui/guesture/b;->b:Landroid/gesture/GestureStore;

    invoke-virtual {v0}, Landroid/gesture/GestureStore;->getGestureEntries()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/estrongs/android/ui/guesture/b;->e:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_4
    move v0, v1

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_5
    throw v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

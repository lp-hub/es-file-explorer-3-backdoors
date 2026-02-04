.class Lcom/estrongs/android/pop/app/bt;
.super Lcom/estrongs/android/util/n;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/pop/app/ImageCommentActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bt;->b:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    iput-boolean p3, p0, Lcom/estrongs/android/pop/app/bt;->a:Z

    invoke-direct {p0, p2}, Lcom/estrongs/android/util/n;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/bt;->b:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->c(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bt;->b:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->d(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->getComments(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/bt;->a:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bt;->b:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    new-instance v1, Lcom/estrongs/android/pop/app/bu;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/bu;-><init>(Lcom/estrongs/android/pop/app/bt;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->printStackTrace()V

    :goto_1
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/bt;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bt;->b:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->b(Lcom/estrongs/android/pop/app/ImageCommentActivity;Lcom/estrongs/android/util/n;)Lcom/estrongs/android/util/n;

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/bt;->b:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->d(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v2

    const-string v3, "offset"

    iget-object v4, p0, Lcom/estrongs/android/pop/app/bt;->b:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    invoke-static {v4}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->d(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Lcom/estrongs/android/util/TypedMap;

    move-result-object v4

    const-string v5, "offset"

    invoke-virtual {v4, v5}, Lcom/estrongs/android/util/TypedMap;->getInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/bt;->b:Lcom/estrongs/android/pop/app/ImageCommentActivity;

    new-instance v2, Lcom/estrongs/android/pop/app/bv;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/app/bv;-><init>(Lcom/estrongs/android/pop/app/bt;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

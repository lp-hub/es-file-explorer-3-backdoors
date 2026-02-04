.class Lcom/estrongs/android/pop/utils/q;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/pop/utils/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/o;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/q;->b:Lcom/estrongs/android/pop/utils/o;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/q;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/utils/q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/q;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->b([Ljava/lang/String;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

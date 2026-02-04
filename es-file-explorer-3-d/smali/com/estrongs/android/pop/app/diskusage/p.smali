.class Lcom/estrongs/android/pop/app/diskusage/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/utils/br;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/diskusage/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/diskusage/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/p;->a:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/diskusage/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/q;->a()Ljava/io/File;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/p;->a:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v3}, Lcom/estrongs/android/pop/app/diskusage/e;->k(Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/pop/app/diskusage/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/estrongs/android/pop/app/diskusage/b;->a(Ljava/io/File;)Lcom/estrongs/fs/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/p;->a:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/app/diskusage/e;->b(Lcom/estrongs/android/pop/app/diskusage/e;Lcom/estrongs/fs/c/a;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

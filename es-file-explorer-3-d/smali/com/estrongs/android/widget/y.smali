.class public Lcom/estrongs/android/widget/y;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/g;


# direct methods
.method protected constructor <init>(Lcom/estrongs/android/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/y;->a:Lcom/estrongs/android/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/q;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/q;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/estrongs/android/widget/y;->a(Lcom/estrongs/android/pop/q;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method a(Lcom/estrongs/android/pop/q;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/pop/q;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "smb"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p3}, Lcom/estrongs/android/pop/q;->a(Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "ftp"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p3}, Lcom/estrongs/android/pop/q;->d(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const-string v0, "dropbox"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "kanbox"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p1, p3}, Lcom/estrongs/android/pop/q;->b(Ljava/util/List;)V

    goto :goto_0
.end method
